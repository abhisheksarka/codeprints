import { fabric } from 'fabric';

export default function Card(props) {
  const { canvas, theme } = props;

  var rect = new fabric.Rect({
    fill: theme.palette.primary.main,
    width: parseInt(theme.spacing(33)),
    height: parseInt(theme.spacing(13)),
    stroke: 'rgba(255, 255, 255, 0.2)',
    strokeWidth: 1,
    rx: parseInt(theme.spacing()),
    ry: parseInt(theme.spacing())
  });

  rect.hasBorders = false;
  rect.hasControls = false;

  canvas.add(rect);

  return rect;
};
