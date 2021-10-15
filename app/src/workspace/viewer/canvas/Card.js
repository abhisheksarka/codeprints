import { fabric } from 'fabric';
import { MUTED_OPACITY } from '../../../theme';

export default function Card(props) {
  const { canvas, theme, data } = props;
  const group = createGroup();

  function createGroup() {
    return new fabric.Group([
      createRect(data, theme),
      createTitle(data, theme),
      createDesc(data, theme)
    ], {
      left: 0,
      top: 0
    });
  }

  group.hasBorders = false;
  group.hasControls = false;

  canvas.add(group);

  return group;
};


function createTitle(data, theme) {
  return new fabric.Text(data.title, {
    fontSize: theme.typography.fontSize,
    fontFamily: theme.typography.fontFamily,
    left: parseInt(theme.spacing(2)),
    top: parseInt(theme.spacing(2)),
    fontWeight: 'bold',
    fill: theme.palette.primary.contrastText
  });
}

function createDesc(data, theme) {
  return new fabric.Textbox(data.desc || "", {
    fontSize: convertRemToPx(parseFloat(theme.typography.caption.fontSize)),
    fontFamily: theme.typography.fontFamily,
    left: parseInt(theme.spacing(2)),
    top: parseInt(theme.spacing(5)),
    width: parseInt(theme.spacing(29)),
    fill: theme.palette.primary.contrastText,
    textAlign: 'left',
    splitByGrapheme: true,
    opacity: MUTED_OPACITY
  });
}

function createRect(data, theme) {
  return new fabric.Rect({
    fill: theme.palette.primary.main,
    width: parseInt(theme.spacing(33)),
    height: parseInt(theme.spacing(13)),
    stroke: 'rgba(255, 255, 255, 0.2)',
    strokeWidth: 1,
    padding: parseInt(theme.spacing()),
    rx: parseInt(theme.spacing()),
    ry: parseInt(theme.spacing())
  });
}

function convertRemToPx(rem) {
  return rem * parseFloat(getComputedStyle(document.documentElement).fontSize);
}
