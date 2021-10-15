import React, { useRef, useEffect, useState } from 'react';
import { useSelector } from 'react-redux'
import { useTheme } from '@mui/material/styles';
import { fabric } from 'fabric';
import Card from './Card';

export default function Canvas(props) {
  const canvasRef = useRef(null);
  const cdlJson = useSelector((state) => state.cdlJson);
  const [canvas, setCanvas] = useState(null);
  let theme = useTheme();

  function setDimensions() {
    const container = props.containerRef.current;
    canvas.setDimensions({
      width: container.offsetWidth,
      height: container.offsetHeight
    });
  };

  function addEvents() {
    window.addEventListener('resize', setDimensions, false);
  }

  useEffect(() => {
    setCanvas(new fabric.Canvas(canvasRef.current));
  }, []);

  useEffect(() => {
    if (canvas != null) {
      setDimensions();
      addEvents();
    }
  }, [canvas]);

  useEffect(() => {
    let klasses = cdlJson.classes;

    for(var key in klasses) {
      let klass = klasses[key];
      Card({
        canvas: canvas,
        theme: theme,
        data: {title: klass.name, desc: klass.desc}
      });
    }
  }, [cdlJson]);

  return (
    <canvas ref={canvasRef}/>
  )
}
