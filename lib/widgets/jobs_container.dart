import 'package:flutter/material.dart';

class JobContainer extends StatelessWidget {
  const JobContainer({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.location,
    required this.description,
    required this.salary,
    required this.onTap,
  }) : super(key: key);
  final String? iconUrl, title, location, description, salary;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(9.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 5.0, offset: Offset(0, 3))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage("$iconUrl"),
                    height: 71,
                    width: 71,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$title",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        "$location",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .apply(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            Text(
              "$description",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .apply(color: Colors.grey),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 9),
            Text(
              "$salary",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .apply(fontWeightDelta: 2),
            )
          ],
        ),
      ),
    );
  }
}
