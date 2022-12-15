import 'package:collection/collection.dart';

void main() {
  print(checkPos(testInput1, 4));
  print(checkPos(testInput2, 4));
  print(checkPos(testInput3, 4));
  print(checkPos(testInput4, 4));
  print(checkPos(input, 4));

  print('============');

  print(checkPos(test2Input1, 14));
  print(checkPos(test2Input2, 14));
  print(checkPos(test2Input3, 14));
  print(checkPos(test2Input4, 14));
  print(checkPos(test2Input5, 14));
  print(checkPos(input, 14));
}

int checkPos(String input, int lengthOfCode) {
  final queue = QueueList();

  for (var i = 0; i < lengthOfCode; i++) {
    queue.addFirst(input[i]);
  }

  for (var i = lengthOfCode; i < input.length; i++) {
    if (queue.take(lengthOfCode).toSet().length == lengthOfCode) {
      return i;
    }
    queue.addFirst(input[i]);
  }
  throw Exception();
}

const testInput1 = 'bvwbjplbgvbhsrlpgdmjqwftvncz';
const testInput2 = 'nppdvjthqldpwncqszvftbrmjlhg';
const testInput3 = 'nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg';
const testInput4 = 'zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw';

const test2Input1 = 'mjqjpqmgbljsphdztnvjfqwrcgsmlb';
const test2Input2 = 'bvwbjplbgvbhsrlpgdmjqwftvncz';
const test2Input3 = 'nppdvjthqldpwncqszvftbrmjlhg';
const test2Input4 = 'nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg';
const test2Input5 = 'zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw';

const input = 'cmpmbppqmqsqzzrrswrrnqrnqqjzjvzzqvzvjvnnlclrrjhrrrnggmgwwdhhfttm'
    'mjrjzrzrhrbrgbrbsbjbcjjvpjjcvjvttfwffjtffqqqldqllhthhljhllfffbfbzbczzznmzn'
    'nrrtgrgppdcppdfpfjjrggpjgjwgjwgghdggzzshzhrhttmhhdqhqsqgglhljjbggjhggfsfvf'
    'ggrmggwwbwvvwssqtqzqlqvlqqvtthjhjrjssclscsszhzbztbbdhdbbqfbqqvdqdjjjspsqsl'
    'snlljnljjhttdtbdttjpjggtfftlldpdzzqhzqqcwwvggmgmppmhpmpddgjjbzbmzmllndldbl'
    'bwbswsbbmzzwnnpdndzznmnjnjmnnzwwrqwrqrvqvqmmbmhmzzdqqfnqqgnqqfppmnnqzzvvcf'
    'clcrrzfzrzttchttshsphshddrgdggvwgvwwjjzbbprrgwrrcttwbwpwfffqppwnpwpqwwwbmw'
    'wjrjprrrsfrfdfrddvdzvzqzgzmgmpgpmmpspdssdlsldsdwssgzgddttqpphllvbvccjzjppf'
    'fsjsbbvnbvbttgwtgtftzzlhzzjvzvsvtsttfrfrsswpwnwccqtqrqqrhqhjhccpfpgpjgpprn'
    'prrscctddqmdqqncqctqqrpqrprwpwnwnrnccmfmdfmfdfnfdnnphhbhttsszgssvhhprprnrs'
    'rrvggdllvfvrvbrbsrbrpphhqbbhllpttjmttrstszzwllbsbzzgmzgzbzcbcbjcbbjdjpjttt'
    'wggqhhpzpzszqqzhqqhrhlrrrvnrnqrqgrqggzccnnjrrcmmzvmmvtmtltvvlzlmmbnmmbbcll'
    'jnjhhbjbhbjbbfcbfcfbbqwwftfhttwvwhhwfwcffwvwmmwtwftfjttwdtwdtwttqnttmdtdjt'
    'djjlzjzhjhwwnbbmdmhhjmhmjjwmmpsmmhrrfnnqrqjrrpmpjpzpbzpztppswsmsnnlnppscsg'
    'cgsccsfcctbtcctvcvhvjhhccppbrbcrbrmbmvmllnmllgfgmgdmmslmlrmllhttgrrsttlmmn'
    'rrrlqqsjjddzzsbsdbbrjbjvbbfwwwglljplpglltlztzvtzzmbzbmbmcchlchcnhccbhhhzrr'
    'glgmgwwwwrddvmmvdvvpjpnpspmpsmpsscrrphpdhdllrsspcspsqslsspbbmcbmmdhdwhwpph'
    'fhmmfhmhjmjrrhtrtffsddwsddwccvncczlzjzdjzddszdsstgtbthhjhddwppvhvvvwrvwrrp'
    'spjpvjjsmsccszzgpzzmjzmzvmvrmmgbglgppbfppvvqffgdgtgpgdgnghhbhgbbpbdbrrjrtj'
    'tggvzzvttwbwlbwbttrbttvdttpctcrtrccddfrrmqqjrqqsvqsqzsslnlggmrggnllvdvbvmb'
    'msmwmfmvvdwvwbbnddvfvzzjppbpgpvgppblbzznsscwssqppgbbfwwfmfzzqqgnnjnffvbfvb'
    'bfllbhlltvtnvnbnsnddcjcbjbbjpbbhhjghhqjjlttnmmhwmhwwddlppsjppgtthllsclcvvl'
    'fvvvlzvlvcccrhrrvqrvvzrvzrrmqqbtbnnwssvhvtttnsttrnnghgdggmgdmmnbnhbhdbddvp'
    'pvhvlvttzmttljlflvfvpfpwffqbffjllnvlltslsttrvrdrmddtwdwmmlplhlnlffmzzrssvs'
    'gsffzjfjcffrcrppzfzbbtltjljtjftfmmmrjmjqmjqmjqmjqjsqqhzzhdhrrcwwbcltfjdgmh'
    'vmqmmsclsdgmdqzcvzznwgtdbzgvlpzvdqrvwpmndtzmdpznnplmbvvmffdpbjztvzpwffvqbw'
    'mvbmtwjrdpngrftvgznmtzwzmsrvpgpzjcdwvnqplfgncgcdtjbhcqztgqpdhwlmrjbzhcfhnz'
    'qmpzzghzpfzbgwmlqztnbdnntgdcfssgzqndhfwdtrbpzbmqjgjflmcllscjnnnrzzsjhnwptj'
    'lbhpcwwhsvqqlvjzghnwvzmwtbjgwfgmpdfcjfswvqzwdbnvlwfbmdcjvgjcdhjfbjccsjqrgd'
    'rhrjnhgpvvfjqvfwqpgmgfsbsnlrfnbtpzljmzrjmjlldgbvvwbnpqgsnzzmswtwgshdlwhstt'
    'djlhnnlgbprwltbppttctttftrmbjccvwtljqffrcpwnwjgcwjnhmphfsnbfdnfbvzqqlwbnjj'
    'dvplrjbflcrwjtrngwzznzhsmnwzfbpjrdmjlwzvrvrblrscjlrmswjpbrtjjbsgzwjnfwwgmn'
    'bbppqfnlmfsbpwbdnjmrcvqdhhvrrvmghlbbpfsqzsnbjvrvthnrhlttsnlbgvsdvsmncdglrg'
    'psqjqthnlrhnzpnnjgvrnmdnrtjbmlppfppnmgjhtbzpztdmclgbqjzsgfjllplpnnmjhgpcfc'
    'pcmbnwjsdmfmrqvqvjfsrnqhbrzdvwcsmmjvqpjnzbgrhwcwggvvjzbrswplgvbbqhdlqptzjv'
    'zcznspjbpvfmgbcfjbgmztmqtlzmzzzpmcdmmvhvnphpcfwcmwqwwqvmwpwhhnspmhrdmjblzh'
    'hlphwldfclsfjbzhjglvllldnmtjtwqtztfcvjdngslhnsmmlwlpzdbrrthtwfpjfvfljddplf'
    'gnhcnwwmmpgwwspnsprsvprccwvvljwbqwrzqjmwfrnnjbrfsrglnrwdfnsswqwsbpplgnfnvv'
    'vhqwmtgsdwmvnzmbjpbscdtcrmsllljwlntjzpwqvvnznmfddtgrmqbdsczhtvjdwrwvjccrqn'
    'jlnqbvqhhvnmqmrmnqllcjzcjgzwctrntjsnhrwmcqzrwzzqgqlmbqczlgtmtwlztclhwcjsgb'
    'dlfrppwrpbnpgsjfhprvzjwnpdwsjwmdcbmljclcgcnsqcpzgvrrbnnhjhblgnpcbzbcdmgjmp'
    'mpcwwdngmggmfqcjcwrzblsfmrslbblhdlwjqrrgtnvcfsccbdgnjcztrblrwbrvdzcnnshwzz'
    'vgcqwpqmjzhzlllbtzmcqpnwwqqlcjtrrzfmdpmpblmwztwqdgbmtfggjwnmffzvszgdmhfvfl'
    'thzmwqgqvgmldzpbwbdvrjldhbnzsthqsczttbbthzgzmmrcmzmzmjfrhbtmsbqrbnsnzzfpvw'
    'lwpszdptljqphrdznhbwbfdfhsrqnmlqdcdgbrbsmgwwbbjsmwhzgmqtmfbndzlmlvmrrvrmqb'
    'jqbhhqtvvgbhbmsrtljwmtnhtpwjvlrgqljvgpsfrwgdfbcwlmvfdrrlgwvvzvcftwpjhcplgw'
    'vqbzftjfbmmcpvrrsvbnwqdhtlsfcjzlrmwvgvgwpbffsrrpdpssqhqrqdglnwcqznzlqqvjzp'
    'sdnpwfqtfjqhqwvlfpwrqqmntcnnbfprlwrfdwstvbpjmjdbcdffmwvqbsdnvcgrtccvcfzpwj'
    'scmrtbbjjnmlcztbldfnwbqcpqlshthrcbdrfldcmhtgwrgqhnnglbzgdgglzjbgjtdvgzgrsp'
    'jtbhpmzvpplgjpjbthmjtwqqzsslnfrtmpznbqvmccqccrtdvrssmdgrptsjglvrmlcwfllptc'
    'zvpgwbdfbrnpzdzmpfjwdhqlsqlzlzrwcsmhcmjhhfhfvcdrzhsmqbwcfshslsnswpslbjnrzq'
    'llwbnddhrngmjqtnvhrjpcpmggvgqbwtwcmbvhnwggdrzfgmhhvpqzbvlghsvgmhngwdsrwlzf'
    'fbpzqmfzvbhbjvqlcswhctpcqnptrvlwblnvpfbzsjnsdjnhqbzddsnthhcfbcvmqgfmvztlcw'
    'jbmdtgvgwqbqgdrvbgbnbcnqwzfzqpsgbvtwlphgvqlzshndcbffzcbllgzrzrnhdvqnvtndhc'
    'dslqbbhcdftlmnltmsmgfcgvmpbsljdbthjtqlfbmczznwcvfcsnftsnpzcwfqbfhjpswzfzfs'
    'wfgtzplppsglsdncblddsmftmfdmmnsjjgg';
