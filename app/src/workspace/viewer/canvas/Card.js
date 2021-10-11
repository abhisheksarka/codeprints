import { fabric } from 'fabric';

export default function Card(props) {
  const { canvas } = props;
  var rect = new fabric.Rect({
    left: 100,
    top: 100,
    fill: 'red',
    width: 20,
    height: 20
  });
  canvas.add(rect);
  return rect;
}

