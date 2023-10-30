import '../../core/api_client.dart';
import 'name_of_allah.dart';

import 'package:inherited_state/inherited_state.dart';

class NamesOfAllahService {
  NamesOfAllahService();
  static const baseUrl = 'https://muslimbuddy.islamconnect.com/api/v1';
  final ApiClient client = SL.get<ApiClient>()!.create(baseUrl: baseUrl);

  Future<List<NameOfAllah>> getAllNamesOfAllah() async {
    return ninetyNineNames;
    // await client.get('names-of-allah');
  }
}

const ninetyNineNames = [
  NameOfAllah(
    arabic: 'ٱلْرَّحْمَـانُ',
    transliteration: 'AR-RAHMAAN',
    meaning: 'The Most or Entirely Merciful',
  ),
  NameOfAllah(
    arabic: 'ٱلْرَّحِيْمُ',
    transliteration: 'AR-RAHEEM',
    meaning: 'The Bestower of Mercy',
  ),
  NameOfAllah(
    arabic: 'ٱلْمَلِكُ',
    transliteration: 'AL-MALIK',
    meaning: 'The King and Owner of Dominion',
  ),
  NameOfAllah(
    arabic: 'ٱلْقُدُّوسُ',
    transliteration: 'AL-QUDDUS',
    meaning: 'The Absolutely Pure',
  ),
  NameOfAllah(
    arabic: 'ٱلْسَّلَامُ',
    transliteration: 'AS-SALAM',
    meaning: 'The Perfection and Giver of Peace',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُؤْمِنُ',
    transliteration: 'AL-MU\u2019MIN',
    meaning: 'The One Who gives Emaan and Security',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُهَيْمِنُ',
    transliteration: 'AL-MUHAYMIN',
    meaning: 'The Guardian, The Witness, The Overseer',
  ),
  NameOfAllah(
    arabic: 'ٱلْعَزِيزُ',
    transliteration: 'AL-AZEEZ',
    meaning: 'The All Mighty',
  ),
  NameOfAllah(
    arabic: 'ٱلْجَبَّارُ',
    transliteration: 'AL-JABBAR',
    meaning: 'The Compeller, The Restorer',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُتَكَبِّرُ',
    transliteration: 'AL-MUTAKABBIR',
    meaning: 'The Supreme, The Majestic',
  ),
  NameOfAllah(
    arabic: 'ٱلْخَالِقُ',
    transliteration: 'AL-KHAALIQ',
    meaning: 'The Creator, The Maker',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَارِئُ',
    transliteration: 'AL-BAARI\u2019',
    meaning: 'The Originator',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُصَوِّرُ',
    transliteration: 'AL-MUSAWWIR',
    meaning: 'The Fashioner',
  ),
  NameOfAllah(
    arabic: 'ٱلْغَفَّارُ',
    transliteration: 'AL-GHAFFAR',
    meaning: 'The All- and Oft-Forgiving',
  ),
  NameOfAllah(
    arabic: 'ٱلْقَهَّارُ',
    transliteration: 'AL-QAHHAR',
    meaning: 'The Subduer, The Ever-Dominating',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَهَّابُ',
    transliteration: 'AL-WAHHAAB',
    meaning: 'The Giver of Gifts',
  ),
  NameOfAllah(
    arabic: 'ٱلْرَّزَّاقُ',
    transliteration: 'AR-RAZZAAQ',
    meaning: 'The Provider',
  ),
  NameOfAllah(
    arabic: 'ٱلْفَتَّاحُ',
    transliteration: 'AL-FATTAAH',
    meaning: 'The Opener, The Judge',
  ),
  NameOfAllah(
    arabic: 'ٱلْعَلِيمُ',
    transliteration: 'AL-\u2018ALEEM',
    meaning: 'The All-Knowing, The Omniscient',
  ),
  NameOfAllah(
    arabic: 'ٱلْقَابِضُ',
    transliteration: 'AL-QAABID',
    meaning: 'The Withholder',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَاسِطُ',
    transliteration: 'AL-BAASIT',
    meaning: 'The Extender',
  ),
  NameOfAllah(
    arabic: 'ٱلْخَافِضُ',
    transliteration: 'AL-KHAAFIDH',
    meaning: 'The Reducer, The Abaser',
  ),
  NameOfAllah(
    arabic: 'ٱلْرَّافِعُ',
    transliteration: 'AR-RAAFI\u2019',
    meaning: 'The Exalter, The Elevator',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُعِزُّ',
    transliteration: 'AL-MU\u2019IZZ',
    meaning: 'The Honourer, The Bestower',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُذِلُّ',
    transliteration: 'AL-MUZIL',
    meaning: 'The Dishonourer, The Humiliator',
  ),
  NameOfAllah(
    arabic: 'ٱلْسَّمِيعُ',
    transliteration: 'AS-SAMEE\u2019',
    meaning: 'The All-Hearing',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَصِيرُ',
    transliteration: 'AL-BASEER',
    meaning: 'The All-Seeing',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَكَمُ',
    transliteration: 'AL-HAKAM',
    meaning: 'The Judge, The Giver of Justice',
  ),
  NameOfAllah(
    arabic: 'ٱلْعَدْلُ',
    transliteration: 'AL-\u2018ADL',
    meaning: 'The Utterly Just',
  ),
  NameOfAllah(
    arabic: 'ٱلْلَّطِيفُ',
    transliteration: 'AL-LATEEF',
    meaning: 'The Subtle One, The Most Gentle',
  ),
  NameOfAllah(
    arabic: 'ٱلْخَبِيرُ',
    transliteration: 'AL-KHABEER',
    meaning: 'The Acquainted, the All-Aware',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَلِيمُ',
    transliteration: 'AL-HALEEM',
    meaning: 'The Most Forbearing',
  ),
  NameOfAllah(
    arabic: 'ٱلْعَظِيمُ',
    transliteration: 'AL-\u2018ATHEEM',
    meaning: 'The Magnificent, The Supreme',
  ),
  NameOfAllah(
    arabic: 'ٱلْغَفُورُ',
    transliteration: 'AL-GHAFOOR',
    meaning: 'The Forgiving, The Exceedingly Forgiving',
  ),
  NameOfAllah(
    arabic: 'ٱلْشَّكُورُ',
    transliteration: 'ASH-SHAKOOR',
    meaning: 'The Most Appreciative',
  ),
  NameOfAllah(
    arabic: 'ٱلْعَلِيُّ',
    transliteration: 'AL-\u2018ALEE',
    meaning: 'The Most High, The Exalted',
  ),
  NameOfAllah(
    arabic: 'ٱلْكَبِيرُ',
    transliteration: 'AL-KABEER',
    meaning: 'The Greatest, The Most Grand',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَفِيظُ',
    transliteration: 'AL-HAFEEDH',
    meaning: 'The Preserver, The All-Heedful and All-Protecting',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُقِيتُ',
    transliteration: 'AL-MUQEET',
    meaning: 'The Sustainer',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَسِيبُ',
    transliteration: 'AL-HASEEB',
    meaning: 'The Reckoner, The Sufficient',
  ),
  NameOfAllah(
    arabic: 'ٱلْجَلِيلُ',
    transliteration: 'AL-JALEEL',
    meaning: 'The Majestic',
  ),
  NameOfAllah(
    arabic: 'ٱلْكَرِيمُ',
    transliteration: 'AL-KAREEM',
    meaning: 'The Most Generous, The Most Esteemed',
  ),
  NameOfAllah(
    arabic: 'ٱلْرَّقِيبُ',
    transliteration: 'AR-RAQEEB',
    meaning: 'The Watchful',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُجِيبُ',
    transliteration: 'AL-MUJEEB',
    meaning: 'The Responsive One',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَاسِعُ',
    transliteration: 'AL-WAASI\u2019',
    meaning: 'The All-Encompassing, the Boundless',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَكِيمُ',
    transliteration: 'AL-HAKEEM',
    meaning: 'The All-Wise',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَدُودُ',
    transliteration: 'AL-WADOOD',
    meaning: 'The Most Loving',
  ),
  NameOfAllah(
    arabic: 'ٱلْمَجِيدُ',
    transliteration: 'AL-MAJEED',
    meaning: 'The Glorious, The Most Honorable',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَاعِثُ',
    transliteration: 'AL-BA\u2019ITH',
    meaning: 'The Resurrector, The Raiser of the Dead',
  ),
  NameOfAllah(
    arabic: 'ٱلْشَّهِيدُ',
    transliteration: 'ASH-SHAHEED',
    meaning: 'The All- and Ever Witnessing',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَقُّ',
    transliteration: 'AL-HAQQ',
    meaning: 'The Absolute Truth',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَكِيلُ',
    transliteration: 'AL-WAKEEL',
    meaning: 'The Trustee, The Disposer of Affairs',
  ),
  NameOfAllah(
    arabic: 'ٱلْقَوِيُّ',
    transliteration: 'AL-QAWIYY',
    meaning: 'The All-Strong',
  ),
  NameOfAllah(
    arabic: 'ٱلْمَتِينُ',
    transliteration: 'AL-MATEEN',
    meaning: 'The Firm, The Steadfast',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَلِيُّ',
    transliteration: 'AL-WALIYY',
    meaning: 'The Protecting Associate',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَمِيدُ',
    transliteration: 'AL-HAMEED',
    meaning: 'The Praiseworthy',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُحْصِيُ',
    transliteration: 'AL-MUHSEE',
    meaning: 'The All-Enumerating, The Counter',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُبْدِئُ',
    transliteration: 'AL-MUBDI',
    meaning: 'The Originator, The Initiator',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُعِيدُ',
    transliteration: 'AL-MU\u2019ID',
    meaning: 'The Restorer, The Reinstater',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُحْيِى',
    transliteration: 'AL-MUHYEE',
    meaning: 'The Giver of Life',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُمِيتُ',
    transliteration: 'AL-MUMEET',
    meaning: 'The Bringer of Death, the Destroyer',
  ),
  NameOfAllah(
    arabic: 'ٱلْحَىُّ',
    transliteration: 'AL-HAYY',
    meaning: 'The Ever-Living',
  ),
  NameOfAllah(
    arabic: 'ٱلْقَيُّومُ',
    transliteration: 'AL-QAYYOOM',
    meaning: 'The Sustainer, The Self-Subsisting',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَاجِدُ',
    transliteration: 'AL-WAAJID',
    meaning: 'The Perceiver',
  ),
  NameOfAllah(
    arabic: 'ٱلْمَاجِدُ',
    transliteration: 'AL-MAAJID',
    meaning: 'The Illustrious, the Magnificent',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَاحِدُ',
    transliteration: 'AL-WAAHID',
    meaning: 'The One',
  ),
  NameOfAllah(
    arabic: 'ٱلْأَحَد',
    transliteration: 'AL-AHAD',
    meaning: 'The Unique, The Only One',
  ),
  NameOfAllah(
    arabic: 'ٱلْصَّمَدُ',
    transliteration: 'AS-SAMAD',
    meaning: 'The Eternal, Satisfier of Needs',
  ),
  NameOfAllah(
    arabic: 'ٱلْقَادِرُ',
    transliteration: 'AL-QADIR',
    meaning: 'The Capable, The Powerful',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُقْتَدِرُ',
    transliteration: 'AL-MUQTADIR',
    meaning: 'The Omnipotent',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُقَدِّمُ',
    transliteration: 'AL-MUQADDIM',
    meaning: 'The Expediter, The Promoter',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُؤَخِّرُ',
    transliteration: 'AL-MU\u2019AKHKHIR',
    meaning: 'The Delayer, the Retarder',
  ),
  NameOfAllah(
    arabic: 'ٱلأَوَّلُ',
    transliteration: 'AL-AWWAL',
    meaning: 'The First',
  ),
  NameOfAllah(
    arabic: 'ٱلْآخِرُ',
    transliteration: 'AL-AAKHIR',
    meaning: 'The Last',
  ),
  NameOfAllah(
    arabic: 'ٱلْظَّاهِرُ',
    transliteration: 'AZ-DHAAHIR',
    meaning: 'The Manifest',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَاطِنُ',
    transliteration: 'AL-BAATIN',
    meaning: 'The Hidden One, Knower of the Hidden',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَالِي',
    transliteration: 'AL-WAALI',
    meaning: 'The Governor, The Patron',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُتَعَالِي',
    transliteration: 'AL-MUTA\u2019ALI',
    meaning: 'The Self Exalted',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَرُّ',
    transliteration: 'AL-BARR',
    meaning: 'The Source of Goodness, the Kind Benefactor',
  ),
  NameOfAllah(
    arabic: 'ٱلْتَّوَّابُ',
    transliteration: 'AT-TAWWAB',
    meaning: 'The Ever-Pardoning, The Relenting',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُنْتَقِمُ',
    transliteration: 'AL-MUNTAQIM',
    meaning: 'The Avenger',
  ),
  NameOfAllah(
    arabic: 'ٱلْعَفُوُّ',
    transliteration: 'AL-\u2018AFUWW',
    meaning: 'The Pardoner',
  ),
  NameOfAllah(
    arabic: 'ٱلْرَّؤُفُ',
    transliteration: 'AR-RA\u2019OOF',
    meaning: 'The Most Kind',
  ),
  NameOfAllah(
    arabic: 'مَالِكُ ٱلْمُلْكُ',
    transliteration: 'MAALIK-UL-MULK',
    meaning: 'Master of the Kingdom, Owner of the Dominion',
  ),
  NameOfAllah(
    arabic: 'ذُو ٱلْجَلَالِ وَٱلْإِكْرَامُ',
    transliteration: 'DHUL-JALAALI WAL-IKRAAM',
    meaning: 'Possessor of Glory and Honour, Lord of Majesty and Generosity',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُقْسِطُ',
    transliteration: 'AL-MUQSIT',
    meaning: 'The Equitable, the Requiter',
  ),
  NameOfAllah(
    arabic: 'ٱلْجَامِعُ',
    transliteration: 'AL-JAAMI\u2019',
    meaning: 'The Gatherer, the Uniter',
  ),
  NameOfAllah(
    arabic: 'ٱلْغَنيُّ',
    transliteration: 'AL-GHANIYY',
    meaning: 'The Self-Sufficient, The Wealthy',
  ),
  NameOfAllah(
    arabic: 'ٱلْمُغْنِيُّ',
    transliteration: 'AL-MUGHNI',
    meaning: 'The Enricher',
  ),
  NameOfAllah(
    arabic: 'ٱلْمَانِعُ',
    transliteration: 'AL-MANI\u2019',
    meaning: 'The Withholder',
  ),
  NameOfAllah(
    arabic: 'ٱلْضَّارُ',
    transliteration: 'AD-DHARR',
    meaning: 'The Distresser',
  ),
  NameOfAllah(
    arabic: 'ٱلْنَّافِعُ',
    transliteration: 'AN-NAFI\u2019',
    meaning: 'The Propitious, the Benefactor',
  ),
  NameOfAllah(
    arabic: 'ٱلْنُّورُ',
    transliteration: 'AN-NUR',
    meaning: 'The Light, The Illuminator',
  ),
  NameOfAllah(
    arabic: 'ٱلْهَادِي',
    transliteration: 'AL-HAADI',
    meaning: 'The Guide',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَدِيعُ',
    transliteration: 'AL-BADEE\u2019',
    meaning: 'The Incomparable Originator',
  ),
  NameOfAllah(
    arabic: 'ٱلْبَاقِي',
    transliteration: 'AL-BAAQI',
    meaning: 'The Ever-Surviving, The Everlasting',
  ),
  NameOfAllah(
    arabic: 'ٱلْوَارِثُ',
    transliteration: 'AL-WAARITH',
    meaning: 'The Inheritor, The Heir',
  ),
  NameOfAllah(
    arabic: 'ٱلْرَّشِيدُ',
    transliteration: 'AR-RASHEED',
    meaning: 'The Guide, Infallible Teacher',
  ),
  NameOfAllah(
    arabic: 'ٱلْصَّبُورُ',
    transliteration: 'AS-SABOOR',
    meaning: 'The Forbearing, The Patient',
  )
];
