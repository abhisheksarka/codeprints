import React, { useRef, useEffect } from 'react';
import Card from './Card';

export default function Canvas(props) {
  const canvasRef = useRef(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    Card({canvas: canvas});
    Card({canvas: canvas});
  }, [])

  return (
    <canvas {...props} ref={canvasRef}/>
  )
}
