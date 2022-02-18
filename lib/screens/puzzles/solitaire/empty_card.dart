import 'package:flutter/material.dart';
import 'package:taja_khobor/screens/puzzles/puzzles_screens.dart';

// The deck of cards which accept the final cards (Ace to King)
class EmptyCardDeck extends StatefulWidget {
  final CardSuit cardSuit;
  final List<PlayingCard> cardsAdded;
  final CardAcceptCallback onCardAdded;
  final int? columnIndex;

  EmptyCardDeck({
    required this.cardSuit,
    required this.cardsAdded,
    required this.onCardAdded,
    this.columnIndex,
  });

  @override
  _EmptyCardDeckState createState() => _EmptyCardDeckState();
}

class _EmptyCardDeckState extends State<EmptyCardDeck> {
  @override
  Widget build(BuildContext context) {
    return DragTarget<Map>(
      builder: (context, listOne, listTwo) {
        return widget.cardsAdded.length == 0
            ? Opacity(
                opacity: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  height: 60.0,
                  width: 40,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Center(
                          child: Container(
                            height: 20.0,
                            child: _suitToImage(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : TransformedCard(
                playingCard: widget.cardsAdded.last,
                columnIndex: widget.columnIndex,
                attachedCards: [
                  widget.cardsAdded.last,
                ],
              );
      },
      onWillAccept: (value) {
        PlayingCard cardAdded = value!["cards"].last;

        if (cardAdded.cardSuit == widget.cardSuit) {
          if (CardType.values.indexOf(cardAdded.cardType) ==
              widget.cardsAdded.length) {
            return true;
          }
        }

        return false;
      },
      onAccept: (value) {
        widget.onCardAdded(
          value["cards"],
          value["fromIndex"],
        );
      },
    );
  }

  Image? _suitToImage() {
    switch (widget.cardSuit) {
      case CardSuit.hearts:
        return Image.asset('assets/images/puzzles/solitaire/hearts.png');
      case CardSuit.diamonds:
        return Image.asset('assets/images/puzzles/solitaire/diamonds.png');
      case CardSuit.clubs:
        return Image.asset('assets/images/puzzles/solitaire/clubs.png');
      case CardSuit.spades:
        return Image.asset('assets/images/puzzles/solitaire/spades.png');
      default:
        return null;
    }
  }
}
