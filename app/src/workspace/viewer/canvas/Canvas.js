import React, { useRef, useEffect } from 'react';
import { useTheme } from '@mui/material/styles';
import { fabric } from 'fabric';
import Card from './Card';

export default function Canvas(props) {
  const canvasRef = useRef(null);
  let canvas,
      theme = useTheme();

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
    canvas = new fabric.Canvas(canvasRef.current);
    setDimensions();
    addEvents();
    Card({canvas: canvas, theme: theme});
  }, []);

  return (
    <canvas ref={canvasRef}/>
  )
}
