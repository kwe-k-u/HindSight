import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hindsight/Utils/EventList.dart';

ThemeData theme = ThemeData(
  canvasColor: Colors.white,
  // canvasColor: Colors.brown[300],
);

Color buttonColor = Colors.blue;
// Color buttonColor = Colors.brown[900];





//List of events in the museum
Event intro = Event(
  title: "Welcome message",
  text: "This is a virtual museum to highlight the fights and struggles of Africans"
      " and Black Americans during the Trans-Atlantic Slavery. This is to help"
      " disprove misconceptions that enslaved persons were docile. These events are "
      "factual and links to research papers from which they are sourced are provided "
      "in the application Bibliography. However, tapping on the images of some "
      "pedastals will redirect you to a Jstor article or a website from which the "
      "information is sourced",
  next: haiti,
  reference: "",
);


Event haiti = Event(
  title: "Long Descent to Hell",
  text: "\"Have they not hung up men with heads downward, drowned them in sacks, "
      "crucified them on planks, buried them alive, crushed them in mortars? "
      "Have they not forced them to eat excrement? Have they not thrown them into "
      "boiling cauldrons of cane syrup? Have they not put men and women inside "
      "barrels studded with spikes and rolled them down mountainsides into the abyss?\". Formerly enslaved person according to the guardian.",
  url: "https://www.theguardian.com/world/2010/jan/14/haiti-history-earthquake-disaster",
  reference: "The Guardian \"Haiti: A Long Descent to Hell\" . "
      "https://www.theguardian.com/world/2010/jan/14/haiti-history-"
      "earthquake-disaster. Accessed 18 Nov. 2020.",
  next: elmina,
);


Event elmina = Event(
  title: "Cape Coast Castle, Elmina, Ghana",
  text: "Before being trafficked over the Atlantic, captured people were kept in a dungeon beneath the "
      "Cape Coast Castle in Ghana (called Gold Coast at the time). As described by Stephanie Smallwood in "
      "Saltwater Slavery, 'A dungeonlike undergroud prison was built into the rock foundation"
      " at Cape Coast Castle by at least 16882'(pg 37)",
  reference: "Smallwood, Stephanie E. Saltwater Slavery : a Middle Passage from Africa to American Diaspora. Cambridge, Mass. :Harvard University Press, 2007.",
  next: smallwood
);

Event smallwood = Event(
  title: "Gold Coast Captives",
  text: "Due to the high humidity and presence of salt in the atmosphere along the coast of Gold Coast, "
      "the shackles used to chain captured people became brittle. This led to a constant shortage of chains and"
      "shuckles, allowing captured natives to escape frequently",
  reference: "Smallwood, Stephanie E. Saltwater Slavery : a Middle Passage from Africa to American Diaspora. Cambridge, Mass. :Harvard University Press, 2007.",
  date: "1682",
  next: akwamu
);


Event akwamu = Event (
  title: "James Town",
  text: "Castles in James Town (Now a town in Accra) were supplied with enslaved people as a result of the wars fought by"
      " the Akwamu people and neighbouring empires. These captives were held in the James Towns castles for weeks before "
      "either being transported by slave ships abroad or by a coasting vessel to the Cape Coast Castle",
  reference: "Smallwood, Stephanie E. Saltwater Slavery : a Middle Passage from Africa to American Diaspora. Cambridge, Mass. :Harvard University Press, 2007.",
  next: barbadozzed,
);


Event barbadozzed = Event(
  title: "Definition: Barbadozz'd",
  text: "Barbadozz'd is defined by Rugemer as the act of forcefully transporting a person to another colony.",
  reference: "Rugemer, Edward B. “The Development of Mastery and Race in the Comprehensive Slave Codes of the Greater Caribbean "
      "during the Seventeenth Century.” William and Mary Quarterly, vol. 70, no. 3, July 2013, pp. 429–58, doi:10.5309/willmaryquar.70.3.0429",
  next: experiment,
);


Event experiment = Event(
  title: "Forced experiments",
  date: "1835",
  text: "Ovary on display at Charleston, South Carolina Medical College Museum was obtained in 1835 when four doctors, "
      "John Bellinger, S. H. Dickson, T. G. Prioleau, T. Ogier and two medical students Mr. Tennent and Mr. Frierson, "
      "conducted an experimental ovarian surgery on a thirty-five year old enslaved women",
  reference: "Owens, Deidre Cooper. 'Black Women's Experiences in Slavery and Medicine.' "
      "Medical Bondage, University of Georgia Press, 2018, pp. 42–72, doi:10.2307/j.ctt1pwt69x.7.",
  next: plot,
);

Event plot = Event(
  title: "Conspiracy",
  text: "\"In 1639, rebellious servants formed a conspiracy to cut the throats of their masters and"
    " 'make themselves not only freemen, but Masters of the Island(Barbados)'\"",
  reference: "Rugemer, Edward B. “The Development of Mastery and Race in the Comprehensive "
      "Slave Codes of the Greater Caribbean during the Seventeenth Century.” William and Mary"
      " Quarterly, vol. 70, no. 3, July 2013, pp. 429–58, doi:10.5309/willmaryquar.70.3.0429.",
  next: moveable
);

Event moveable = Event(
  title: "Property or person?",
  text: "By virtue of property law, enslaved people were deemed as moveables (property) and therefore "
      "cannot benefit from feudal or seigniorial rights",
  reference: "Renwick, William. Le Code Noir Published by : The University of Chicago Press on Behalf of "
      "the Association for the Study of African American Life and History Stable URL : https://www.jstor."
      "org/stable/2714119. no. 3, 2020, pp. 321–29",
  url: "Https://Www.Jstor.Org/Stable/2714119".toLowerCase(),
  next: inheritance,
);


Event inheritance = Event(
  title: "False inheritance",
  text: "By virtue of the principle of sequitur ventrem, the children born of an enslaved women was deemed "
      "the property of the owner of the enslaved woman, irrespective of the status of the father.",
  reference: "Renwick, William. Le Code Noir Published by : The University of Chicago Press on Behalf of "
      "the Association for the Study of African American Life and History Stable URL : https://www.jstor."
      "org/stable/2714119. no. 3, 2020, pp. 321–29",
  url: "Https://Www.Jstor.Org/Stable/2714119".toLowerCase(),
  next: headright
);



Event headright = Event(
  title: "Head Rights",
  text: "\"Every immigrant to Virginia in the seventeenth century earned fo himself, if he paid his own way, "
      "or for the person who pay it, a right known as a headright; to fifty acres of land\"",
  reference: "Society, Virginia Historical, and The Virginia Magazine. Review : Headrights and Head Counts :"
      " A Review Article Reviewed Work ( s ): White , Red , and Black : The Seventeenth-Century Virginian by "
      "Wesley Frank Craven Review by : Edmund S . Morgan Source : The Virginia Magazine of History "
      "and Biography , Jul ., 1. no. 3, 1972",
  next: slaveCodeNY,
);



Event slaveCodeNY = Event(
  title: "Revision of New York Slave Code",
  text: " the penalty for arson by a slave is set to death. This is after a group of enslaved persons in Maiden "
      "Lane orchard, New York City, set a barn ablaze and attacked whites who came out to extinguish the blaze. "
"Afterwards, twenty one enslaved people were executed while six committed suicide.",
  reference: "Szasz, Ferenc M. “The New-York Slave Revolt of 1741: A Re-Examination.” New York History, vol. 48, "
      "no. 3, July 1967, p. 215, http://www.jstor.org.elibraryashesi.remotexs.co/stable/23162951?Search=yes&result"
      "ItemClick=true&searchText=New+york+slave+code&searchUri=%2Faction%2FdoBasicSearch%3FQuery%3DNew%2Byork%2Bslave"
      "%2Bcode%26acc%3Don%26wc%3Don%26fc%3Doff%26group%3Dnone&ab_segmen.",
  url: "http://www.jstor.org.elibraryashesi.remotexs.co/stable/23162951?Search=yes&resultItemClick=true&searchText=New+york+slave+code&searchUri=%2Faction%2FdoBasicSearch%3FQuery%3DNew%2Byork%2Bslave%2Bcode%26acc%3Don%26wc%3Don%26fc%3Doff%26group%3Dnone&ab_segmen",
next: consequences
);


Event consequences = Event(
  title: "Consequences",
  text: "A fugitive slave in flight for one month will have his ears cut off and be branded on the shoulder, "
      "the second time on the other shoulder, for the third offence the punishment is death (Renwick)",
  reference: "Renwick, William. Le Code Noir Published by : The University of Chicago Press on Behalf of "
      "the Association for the Study of African American Life and History Stable URL : Https://Www.Jstor.Org/Stable/2714119. no. 3, 2020, pp. 321–29",
  url: "Https://Www.Jstor.Org/Stable/2714119".toLowerCase(),
  next: shot
);



Event shot = Event(
  title: "Throwing jabs",
  text: "While discussing America's desire to gain independence from Britain, Samuel Johnson passed the comment,"
      "\"How is it that we hear the loudest yelps for liberty among the drivers of Negros\"",
  reference: "Johnson, Samuel. “Taxation No Tyranny; an Answer to the Resolutions and Address of the American Congress [1775].”"
      " The Works of Samuel Johnson, LL.D., 2011, pp. 93–144, doi:10.1017/cbo9781139056496.004"
);

