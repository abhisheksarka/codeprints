import React, { useRef, useState } from 'react';

export default function Card(props) {
  const { canvas } = props,
        ctx = canvas.getContext('2d');

  ctx.fillStyle = "#333333";
  ctx.fillRect(10,10,10,10);

  return ctx;
}
