// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


var main = {
  
  getshakespearequote: 'http://www.xmlme.com/WSShakespeare.asmx',

  /**
   * Sends an XHR GET request to grab photos of lots and lots of kittens. The
   * XHR's 'onload' event is hooks up to the 'showPhotos_' method.
   *
   * @public
   */
  requestSpeech: function() {
    var req = new XMLHttpRequest();
    req.open("GET", this.getshakespearequote, true);
    req.onload = this.showSpeech.bind(this);
    req.send(null);
  },

  /**
   * Handle the 'onload' event of our kitten XHR request, generated in
   * 'requestKittens', by generating 'img' elements, and stuffing them into
   * the document for display.
   *
   * @param {ProgressEvent} e The XHR ProgressEvent.
   * @private
   */
  showSpeech: function (e) {
      //var speech = e.target.responseXML.querySelectorAll('GetSpeechResult');
    
	  var speech = this.getSpeech();
      var display = document.createElement('p');
      display.innerHTML = speech;
      document.body.appendChild(display);
    },
	
	getSpeech: function()
	{
	    var speech;
	    var cookieName = 'daily_shakespeare';
		
	    var cookie = getCookie(cookieName);
		var mono = Math.floor((Math.random()*10)+1);
		var day = new Date().getDay();
		var cookieValue = day + "-" + mono;

		if(!cookie || cookie == "")
		{
		    createCookie(cookieName, cookieValue, 1);
		    cookie = getCookie(cookieName);
		}

		var values = cookie.split("-");

		if(parseInt(values[0]) != day)
		{
			createCookie("daily_shakespeare", cookieValue, 1);
		}
		
		
		
		switch(parseInt(values[1]))
		{
		case 0: speech = "<b>Beatrice - Much Ado About Nothing</b><br/>What fire is in mine ears? Can this be true?<br/>Stand I condemn'd for pride and scorn so much?<br/>Contempt, farewell! and maiden pride, adieu!<br/>No glory lives behind the back of such. <br/>And, Benedick, love on; I will requite thee,<br/>Taming my wild heart to thy loving hand:<br/>If thou dost love, my kindness shall incite thee<br/>To bind our loves up in a holy band;<br/>For others say thou dost deserve, and I<br/>Believe it better than reportingly."; break;
		case 1: speech = "<b>Imogen - Cymbeline</b><br/>I did not take my leave of him, but had	<br/>Most pretty things to say; ere I could tell him <br/>How I would think on him at certain hours <br/>Such thoughts and such, or I could make him swear<br/>The shes of Italy should not betray <br/>Mine interest and his honour, or have charg'd him,<br/>At the sixth hour of morn, at noon, at midnight, <br/>To encounter me with orisons, for then <br/>I am in heaven for him; or ere I could	<br/>Give him that parting kiss which I had set <br/>Betwixt two charming words, comes in my father,<br/>And like the tyrannous breathing of the north <br/>Shakes all our buds from growing."; break;
		case 2: speech = "<b>Friar - Romeo and Juliet</b><br/>Holy Saint Francis, what a change is here!<br/>Is Rosaline, whom thou didst love so dear,<br/>So soon forsaken? young men's love then lies<br/>Not truly in their hearts, but in their eyes.<br/>Jesu Maria, what a deal of brine<br/>Hath wash'd thy sallow cheeks for Rosaline! <br/>How much salt water thrown away in waste,<br/>To season love, that of it doth not taste!<br/>The sun not yet thy sighs from heaven clears,<br/>Thy old groans ring yet in my ancient ears;<br/>Lo, here upon thy cheek the stain doth sit<br/>Of an old tear that is not wash'd off yet:<br/>If e'er thou wast thyself and these woes thine,<br/>Thou and these woes were all for Rosaline:<br/>And art thou changed? pronounce this sentence then,<br/>Women may fall, when there's no strength in men."; break;
		case 3: speech = "<b>Portia - The Merchant of Venice</b><br/>The quality of mercy is not strain'd,<br/>It droppeth as the gentle rain from heaven<br/>Upon the place beneath: it is twice blest;<br/>It blesseth him that gives and him that takes:<br/>'Tis mightiest in the mightiest: it becomes<br/>The throned monarch better than his crown; <br/>His sceptre shows the force of temporal power,<br/>The attribute to awe and majesty,<br/>Wherein doth sit the dread and fear of kings;<br/>But mercy is above this sceptred sway;<br/>It is enthroned in the hearts of kings,<br/>It is an attribute to God himself;<br/>And earthly power doth then show likest God's<br/>When mercy seasons justice. Therefore, Jew,<br/>Though justice be thy plea, consider this,<br/>That, in the course of justice, none of us<br/>Should see salvation: we do pray for mercy;<br/>And that same prayer doth teach us all to render<br/>The deeds of mercy. I have spoke thus much<br/>To mitigate the justice of thy plea;<br/>Which if thou follow, this strict court of Venice<br/>Must needs give sentence 'gainst the merchant there. "; break;
		case 4: speech = "<b>Iago - Othello</b><br/>Thus do I ever make my fool my purse: <br/>For I mine own gain'd knowledge should profane,<br/>If I would time expend with such a snipe.<br/>But for my sport and profit. I hate the Moor:<br/>And it is thought abroad, that 'twixt my sheets<br/>He has done my office: I know not if't be true; <br/>But I, for mere suspicion in that kind,<br/>Will do as if for surety. He holds me well;<br/>The better shall my purpose work on him.<br/>Cassio's a proper man: let me see now:<br/>To get his place and to plume up my will <br/>In double knavery—How, how? Let's see:—<br/>After some time, to abuse Othello's ear<br/>That he is too familiar with his wife.<br/>He hath a person and a smooth dispose<br/>To be suspected, framed to make women false.<br/>The Moor is of a free and open nature,<br/>That thinks men honest that but seem to be so,<br/>And will as tenderly be led by the nose As asses are.<br/>I have't. It is engender'd. Hell and night <br/>Must bring this monstrous birth to the world's light."; break;
		case 5: speech = "<b>Ariel - The Tempest</b><br/>To every article. <br/>I boarded the king's ship; now on the beak,<br/>Now in the waist, the deck, in every cabin,<br/>I flamed amazement: sometime I'ld divide,<br/>And burn in many places; on the topmast,<br/>The yards and bowsprit, would I flame distinctly,<br/>Then meet and join. Jove's lightnings, the precursors<br/>O' the dreadful thunder-claps, more momentary<br/>And sight-outrunning were not; the fire and cracks<br/>Of sulphurous roaring the most mighty Neptune<br/>Seem to besiege and make his bold waves tremble,<br/>Yea, his dread trident shake. "; break;
		case 6: speech = "<b>Macbeth - Macbeth</b><br/>If it were done when 'tis done, then 'twere wellIt were done quickly: if the assassination<br/>Could trammel up the consequence, and catch<br/>With his surcease success; that but this blow<br/>Might be the be-all and the end-all here,<br/>But here, upon this bank and shoal of time,<br/>We'ld jump the life to come. But in these cases <br/>We still have judgment here; that we but teach<br/>Bloody instructions, which, being taught, return<br/>To plague the inventor: this even-handed justice<br/>Commends the ingredients of our poison'd chalice<br/>To our own lips. He's here in double trust;<br/>First, as I am his kinsman and his subject,<br/>Strong both against the deed; then, as his host,<br/>Who should against his murderer shut the door,<br/>Not bear the knife myself. Besides, this Duncan<br/>Hath borne his faculties so meek, hath been <br/>So clear in his great office, that his virtues<br/>Will plead like angels, trumpet-tongued, against<br/>The deep damnation of his taking-off;<br/>And pity, like a naked new-born babe,<br/>Striding the blast, or heaven's cherubim, horsed <br/>Upon the sightless couriers of the air,<br/>Shall blow the horrid deed in every eye,<br/>That tears shall drown the wind. I have no spur<br/>To prick the sides of my intent, but only<br/>Vaulting ambition, which o'erleaps itself <br/>And falls on the other.<br/>";break;
		case 7: speech = "<b>Coriolanus - Coriolanus</b><br/>I'll give my reasons,<br/>More worthier than their voices. They know the corn<br/>Was not our recompense, resting well assured <br/>That ne'er did service for't: being press'd to the war,<br/>Even when the navel of the state was touch'd,<br/>They would not thread the gates. This kind of service<br/>Did not deserve corn gratis. Being i' the war<br/>Their mutinies and revolts, wherein they show'd <br/>Most valour, spoke not for them: the accusation<br/>Which they have often made against the senate,<br/>All cause unborn, could never be the motive<br/>Of our so frank donation. Well, what then?<br/>How shall this bisson multitude digest <br/>The senate's courtesy? Let deeds express<br/>What's like to be their words: 'we did request it;<br/>We are the greater poll, and in true fear<br/>They gave us our demands.' Thus we debase<br/>The nature of our seats and make the rabble <br/>Call our cares fears; which will in time<br/>Break ope the locks o' the senate and bring in<br/>The crows to peck the eagles. <br/>";break;
		case 8: speech = "<b>Marina - Pericles, Prince of Tyre</b><br/>My lord, that ne'er before invited eyes,<br/>But have been gazed on like a comet: she speaks,<br/>My lord, that, may be, hath endured a grief<br/>Might equal yours, if both were justly weigh'd.<br/>Though wayward fortune did malign my state,<br/>My derivation was from ancestors<br/>Who stood equivalent with mighty kings:<br/>But time hath rooted out my parentage,<br/>And to the world and awkward casualties<br/>Bound me in servitude.<br/>[Aside]<br/>I will desist;<br/>But there is something glows upon my cheek,<br/>And whispers in mine ear, 'Go not till he speak.'<br/>";break;
		case 9: speech = "<b>Hermoine - The Winter's Tale</b><br/>Since what I am to say must be but that<br/>Which contradicts my accusation and <br/>The testimony on my part no other<br/>But what comes from myself, it shall scarce boot me<br/>To say 'not guilty:' mine integrity<br/>Being counted falsehood, shall, as I express it,<br/>Be so received. But thus: if powers divine<br/>Behold our human actions, as they do,<br/>I doubt not then but innocence shall make<br/>False accusation blush and tyranny<br/>Tremble at patience. You, my lord, best know,<br/>Who least will seem to do so, my past life<br/>Hath been as continent, as chaste, as true,<br/>As I am now unhappy; which is more<br/>Than history can pattern, though devised<br/>And play'd to take spectators. For behold me<br/>A fellow of the royal bed, which owe <br/>A mother to a hopeful prince, here standing<br/>To prate and talk for life and honour 'fore<br/>Who please to come and hear. For life, I prize it<br/>As I weigh grief, which I would spare: for honour, <br/>'Tis a derivative from me to mine,<br/>And only that I stand for. I appeal<br/>To your own conscience, sir, before Polixenes<br/>Came to your court, how I was in your grace,<br/>How merited to be so; since he came, <br/>With what encounter so uncurrent I<br/>Have strain'd to appear thus: if one jot beyond<br/>The bound of honour, or in act or will<br/>That way inclining, harden'd be the hearts<br/>Of all that hear me, and my near'st of kin <br/>Cry fie upon my grave!<br/>";break;
		case 10: speech = "<b>Cleopatra - Antony And Cleopatra</b><br/>Sir, I will eat no meat, I'll not drink, sir;<br/>If idle talk will once be necessary,<br/>I'll not sleep neither: this mortal house I'll ruin,<br/>Do Caesar what he can. Know, sir, that I<br/>Will not wait pinion'd at your master's court;<br/>Nor once be chastised with the sober eye <br/>Of dull Octavia. Shall they hoist me up<br/>And show me to the shouting varletry<br/>Of censuring Rome? Rather a ditch in Egypt<br/>Be gentle grave unto me! rather on Nilus' mud<br/>Lay me stark naked, and let the water-flies <br/>Blow me into abhorring! rather make<br/>My country's high pyramides my gibbet,<br/>And hang me up in chains!<br/>";break;
		 
		default: break;
		}
		
		return speech;
	}
  };

// Run our kitten generation script as soon as the document's DOM is ready.
document.addEventListener('DOMContentLoaded', function () {
  main.showSpeech();
});

function createCookie(name, value, days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else var expires = "";
    document.cookie = name + "=" + value + expires + "; path=/";
}
function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) {
                c_end = document.cookie.length;
            }
            return unescape(document.cookie.substring(c_start, c_end));
        }
    }
    return "";
}
