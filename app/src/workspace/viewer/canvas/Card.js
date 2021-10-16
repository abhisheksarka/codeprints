import { fabric } from 'fabric';
import { MUTED_OPACITY } from '../../../theme';

export default function Card(props) {
  const { canvas, theme, data } = props;
  const currentCard = updateCard() || createCard();

  function createCard() {
    let card = new fabric.Group([
      createRect(data, theme),
      createTitle(data, theme),
      createDesc(data, theme)
    ], {
      left: 0,
      top: 0
    });
    card.id = data.id;

    card.hasBorders = false;
    card.hasControls = false;

    canvas.add(card);

    return card;
  }

  function updateCard() {
    let card = findCard();
    if (!card) { return }

    updateDesc(card, data);
    return card;
  }

  function findCard() {
    return canvas.getObjects().filter((obj) => {
      return (obj.id == data.id)
    })[0];
  }

  return currentCard;
};


function createTitle(data, theme) {
  return new fabric.Text(data.title, {
    fontSize: theme.typography.fontSize,
    fontFamily: theme.typography.fontFamily,
    left: parseInt(theme.spacing(2)),
    top: parseInt(theme.spacing(2)),
    fontWeight: 'bold',
    fill: theme.palette.primary.contrastText,
    id: 'title'
  });
}

function updateDesc(card, data) {
  let desc = card.getObjects().filter((obj) => {
    return (obj.id == 'desc')
  })[0];
  desc.set('text', data.desc || "");
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
    opacity: MUTED_OPACITY,
    id: 'desc'
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
    ry: parseInt(theme.spacing()),
    id: 'rect'
  });
}

function convertRemToPx(rem) {
  return rem * parseFloat(getComputedStyle(document.documentElement).fontSize);
}
