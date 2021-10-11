import React, { useRef, useEffect } from 'react';
import { fabric } from 'fabric';
import Card from './Card';

export default function Canvas(props) {
  const canvasRef = useRef(null);
  let canvas = null;

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
    addEvents();
    Card({canvas: canvas});
  }, []);

  return (
    <canvas ref={canvasRef}/>
  )
}
