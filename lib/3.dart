import 'package:collection/collection.dart';

void main() {
  print(input.split('\n').map(
    (e) {
      final compartment1 = e.substring(0, e.length ~/ 2).codeUnits.toSet();
      final compartment2 = e.substring(e.length ~/ 2).codeUnits.toSet();
      final existsInBoth = compartment1
          .where((e) => compartment2.contains(e))
          .map((e) => e - 64)
          .map((e) => e > 32 ? e - 32 : e + 26);

      return existsInBoth.sum;
    },
  ).sum);

  print(" --------- ");

  final temp = input.split('\n');
  print([
    for (var i = 0; i < temp.length; i += 3)
      () {
        final group =
            temp.getRange(i, i + 3).map((e) => e.codeUnits.toSet()).toList();
        final first = group.first;
        var codeUnitInAll = first.firstWhere(
          (codeUnit) => group.every(
            (set) => set.contains(codeUnit),
          ),
        );
        codeUnitInAll = codeUnitInAll - 64;
        return codeUnitInAll > 32 ? codeUnitInAll - 32 : codeUnitInAll + 26;
      }(),
  ].sum);
}

const testInput = '''vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw''';

const input = '''WwcsbsWwspmFTGVV
RHtMDHdSMnDBGMSDvnvDjtmpTpjTFggpmjmTFggTjmpP
vtCSGRMBDzHddvBHBzRhrlcZhlLzWNlqblhzcr
shhszHNHHZWqSzVNdClMjlFjBBbNTB
tQQGmnrMnJnGfmvrRRPCjlbljFBdjFCjTjnP
mRwtfGrMmJtwRDvQJQrJpMLSzVDHzhzHZqZzqSzcWVWH
WsWWgrtgsrhTQtsFcWPcRMCCTvqvMvqNNqMMHlMq
bBJrBGbzzLJznJrbSDGGJLqmlvqMqvlmLHRqRZZRNZ
bzJfDGVSzVrJGwjVGPPpQthdPsPpjdphsc
pJpCCBSWlczWWBWMHdMmMsFmpddrgF
wfVqZZGVQvzsMqmMgHjm
vDZGvPttQTVtGDQDDDGwbSCcSJSCJWTcRRSRczRJ
HLVHsVWLwbWswbpWFWrrmThfTPNnhNSDDNhDfznTnhnS
pBRcvGvvBtpGcqqQvgcphPfzfDGhzdzPDzDDhnhS
ZQRvqBptjJgZCtJqqMMMLHWwMWZWHHFFHm
PvPFPvLLLSvNFvQNWNPvrPLrZjwhMttTwtTtQZBwqjqtZqwM
HJDDbHjgppzCDCmzpgzsGbCsTMZqZllqhJBhMTtVBBhMtMth
zgGncmGGzHCnHDpDgDCGsmFLLPFjPRRWLRjdcjrcdRLd
zHnWzntnBRWTSBzRBddpFvZVcHpLFvjvLppvHP
MmmWmNGQhbCpZVLLbccvpj
QDMCGrNWfwNznBJsJzDBdg
tcRcZccZmdZJctRcjrlhNNDfrdNdSfNsNT
QHQpBVvMpRMwgBgvnHRFlhrSsgNFThgTFFflNS
vvHpVBBBGBppHvpLvHGbjmmtCqWLJJZRzZZZZb
ZBtTDZRWsTsDZVWVZDmjpbLbpSSzmLpWrbrS
MFNNFvvwFHwlhmNrCStLNtjzrb
vwffwcHwflGqGflHJfDBBZtQVBgZQJtBBsnT
pTJcmMJTspmpMZZJJZHCQQMzPBlQdWWWFzWP
LDnwrdnDnqjfqgvfDjrfFlBBPFHFSHPQCBvQSSWB
nLbjgLjdbrwVRcppsscJVRRR
mHnfggmMtpHPPBCs
PJjlQQRrJhJNPPTtBsCbCCTlpptd
rSSDhNQwShRRjhmMPmzMDfPmfLzL
HzLFBgrCthtFrrhFSCCCvBQNRVmJJJmnpnddmppddVtJ
MPZsjDWPjZsVzNTzpVdRdZ
qMfjWfwclsPsjwzqHgLFhwGFwHrFFrSC
llllmSbhNmSbNzlPmRNCcgLLchHHpTGsCTQGpT
dVjBrvBBVLJQsLpC
frZBWBDMFndStFsSwzlPlq
vmTVVtmJHwCwDllttTsrcPcMrfqPMMpjMq
LQGBRgGGRNgGgBhgzHfpjPqsMjpLcLjrPLpq
BdgzgSRGBnNHJtJlVStVmt
FbDQsFjPVHFZFSbrVjSVvMJlGBJhDcqBBllJGccJnh
RfTCTTpmppfgwCpwpLwRMnMGMlcPGqhddPcJnl
zgLPLNCCpLggzmTzTWmVrjVvrNvjjjvbVHQZZH
RBjjpwmRszBdvhLdSvpVpV
GrbfbJWmQJGWrGZZQMbSLggfCgSHhCSgShghSC
DWNDZQcrbWQrZJZGQQZPsztzBsPmBTzwcwRwjT
rlvgglvZqbrbWbWWdvdmPHBBNMNJGqjGRRnHnPBJ
cDFDcfcCDhLzsCfLDVpGPRJMPsRJMPNRnjHHGJ
DCfMVDFVScVMVQlgmZgdmWQQmS
nWTWWgwNgGDdBZBVcvDzzJccVlCzHD
RLppMMLpRqfMtMjtMCHJFSpzHSvSpczJdl
RdLRbQRjsRMrMRRMfbQLqPjbmnQgQWWwZmggnNTgnnWwhBhn
TmzjMjrmjmjBmHLvGPpbvWGqJzJJ
CfScwNDssDVCccdNVcNDQfbqJLqSLPpJpJJvJPpGTWJb
nddCQTfQVVrHmjMnrMFM
WHDnTwvwcwZmWwQTnBtgbVLLbgfSlTfrfb
CPPGdJRzNhNpzPJtMgBLbgtlLLfLMz
GJptpdFRhJwDmFHDjvnD
PNcWDNnNDcLjDDcSRWtQFfzzzQgPgsssZtPZ
MGhJRJGGrlpVGVHVCqqGqBQvzFzFfBvZvvtZtvFzvZvQ
JmJplCrlMNdmjbNbWR
pqpqFJPPSswJshNghg
zTHHrrbLzDQHccfhqmDshgCwfmqm
rtqqtTTHtzGLPWBdnGBSWGSS
gmNvgVqjjqzfMRgrRtPcft
WswSQwWWHGCsHQhlGGLLJRbLMRfRGcMb
dQCRCWhhwCwFwQshhRTmmBmFjFTTVNpqTnTj
FZvqSWqjjZvvrNSvbblcbslDppDHbcsS
MmwLTwPmBwmLJJmLlWzWnDllHcHzcDHM
QRwtQtLTwwQBTPfFfZdFvqqrFGWjrh
MqlnnNvJJZnNNdJZZLvLJnMzjjCTCChgWjccWqcjhcgcWR
tbddSHDBbHgHhHTCjh
mffBfbpsFSdQQDbQsrlJvwJNLLJMrrlsJr
RjqbNRRbDDqHndbcHDqdRHcChsffCQJJssZGpzpCpJphJd
VrMmSbrWVMtMtLmQGCfZWJZCfpZfJW
PgSPgTvSSHjjBbvbvq
whclNQQfcCFCcrJRjmmHNWsmLs
PPzMbqBPLVtnTppPTPzHJrGWJRRvsjjjRHssRb
PtgPVZTtTLMtBzqPqttPVMClcdDcgCCfCQDSdSgCwlhh
DrcrsvcNtLWSFPSFszbM
HqTdHJdQhGJBHQHWWDTnnPzbMMzPnS
hdwfqdhQJfjlccrfvNDLfl
BBPCWvjvTLrHTHHPCTndfwhbdnnZZfDhJwfJVb
msmgNMMcgmgczlmmgQNlddpVDDZpZpDfhZfJwsJF
mmQmMgSgzmqSRllGmgjPHrvvwHttjLrLRWWB
RwvDvhjhMvwlFNwNwCWCCWWLZcbGGZLGJVrppbZVcjmpmJ
tfnfsStnPPfTfgnPSSzPflJZZZrlZJVzLLmZJrzVmG
nPHqgfsHQnffqgSTldHTPnPHWMRFFqqFhNNNCwNCFMMhDMhh
FmwFHmnlGJfnlSlmrfsSvWgZNWNvLvtqLqDJhWJD
BVVTTMqRWvRZRbhW
pMBPCzVPQcQsGqSFmPFwSF
TcpTpwqZqMpZqlZCpZlwDjjcPNdgdPjHHHdvhHQgvv
zQFBRbmsQbLLBnGBvFdPghddNgHjNSSj
QnszWVzLfsLGbnGQbwpVtMrwZTqpCqpppr
WrZmrJcGwZdGZZmHdJcwGWcZsdFFLqTtLVtSTLtvvLtLLqSs
fnpCCQClfpQlzbbpQpflBpjhLVSTvFhjqtstVsjtstFVMs
QBQRnbCRpnPngnbggCzzRClZwJHFHDwZJPJGWHwmNGHPZr
fDhjvftQtDwgPhdRcRRP
bbNSgllVNMCWVnbWmcdFdmmFdpFpRrPPPw
NBzBglNzBvvGZDJQ
rGbbtStjSdbGtDpjjJbbRRbdrcCsCCrFqhllrFHsFsCvqCWH
TzgMMgmTVgzzTMLLfMHvTFsFCqHTvFsTvshF
gLMPBgQmQmNzVZLPzPppjbRhhddGBGSttbpR
zMJTpMzpVczHbCzVJVFCpJPngnBqVZqsRZZPnjqRgmjR
wttwNdfLQwLhwhhDDhWvgRmnPqsQqjnBPSZRgjPS
DdLwGGvNvhlvrrMFlFTcZrpC
llBQWMScQlSSBjMrvrrPpFHFBDFDFJTmTtFFmF
nzZzfVgzCNtnJppDHPnPpp
LdRNfVdzbzCCjcvllMcsbtjj
pWFwpFhprTnFfWwZrsBDmsqBvZvjjv
VbcHCthtzQtNqBsvsZvQmQsj
cltzzVcJSMtRWdhJLhRwdh
lmmmLRdZnjBlGgVhNSVvRMWN
bDwCqCGPbwpPwDPPpCpqpPbScvMSMSDWgVcSShNNVfgWWv
bTpzqJHPFFJqbTHswLlGlBntGnjQtGBZTT
pVjVlDDhmRPlHlHPWzWVWrVrcWztVdzv
GCqGGGJSFbnLJLLfrLfPrLdgrrgfWd
PbJSQGSsGnbMbqSFGBMMbsGTNwpTRwppDRsjwlNpsmHwDl
GcnPbbbLqDPDBPPDlQ
JtTChNfRpNJMTCfMTlJVsdVHvDddHBVmQm
TzlffWNfjTfjjCjfTtRrLgbnbbnSSwbnLzZZzr
hggWzjLhzhLhjzVWgpCpTFFHtCJFTJTHHHdG
lvSBvNNSNSSmlbwmMJCGtJQCHmdT
cfSlSSlvBDBPnlPPDZLsgtggZZVVfhzRgV
gGVJGvVVZZLvQLWQppccpctpNptMhnhSjjnM
fzQBsBzmwPzdQrRbSFNFnsSDchjnFhMN
bCwQRbbCJvlGCHgL
NMgdHVSqgQcVHmlllLDjlCLdjL
whTRJtJTnthWBlLLLmlFtVmV
wRhnGTpzzTRnVbzzWWbJwbhNQrZHfpNgMQpfZQHHNZZHHQ
qNNlMdbNrlVsQQfswQNCmW
LJzBvSdLSHpDJzzzHJnHnzFQCCmmswmfwBGhsQfWfCwW
HzSvHppDDRvgHzzcnqTrTtllZdRrbRVVZZ
TWVVVFVPpjVFtRfPBmmzMMPCvmLm
hDDrwndQQbbhZDMSMvcflMLmfnBL
grdggqsbrhdJJJrhbwbbsZGHVNHtTWpVBFVTTTVTHtNg
tLbvnTCzCVnzzwVTJVlwltMFvQFQRFFrQPBFdNgrMBNF
pShsqqmGjZfZccsqSfbdNBMMRQGBPgMdPMPF
HhspDpjhSjbcSmcqhZDcZZjTttLVwlTJJVWtnWVlWHCltL
DwQBvwBnBrSVRrZM
JWWGRssgRsFgzsFPJrNHVMHrlVrPSMNjHH
gspgFzRCFWLJpgqqRWgqpCJwnQCnhQvwcTdcdddnwbDfhf
fMMCwFDGNNMTdTDLlVlZZmdZBdBtVr
jjpjtbpRcPvSPnPnpPnvPPPnbZlmrWmLWHmHBWHlrmrmlZWl
jqjjnPqngtQfGFftFq
qnzhhbzzqGgsqGtnwcJrlCMlCjvcCCcrCRrvCv
mVSNZdTQdVVWmVFHQrpCjpjDRvjMRjdLRt
WBHZTHHTFWWNNBNHQTZPsPggghfgsnsgsffthszJ
sDwpdMgvHrZgwbdggzZZgPhFNFFcjPPqhLhjMlPqLq
JffJfnJGtBtCQQRBJZTQJJGfcNjqCLcFhFWCPLjhFLPjcPhl
VZZVmtGQQZmHrwgddppb
NNNlpjbVpGglNbvpTwBQQvfWvfBrWvBW
JthDJsLhhHPcGcqPshJsshSBwCWwfWSLCfSfSSRBrfWB
dhDtZqGmctZDtZHqDGVgVgNbbbFjndMFNlFg
jqDVzzDMdDwsVQLCZVCRWLGBQC
bbHFbSSpFbFHJHStJNbtJprZlCGLQsLGZRBLRQLQpLBClZ
SmFmTPJvFTNbmmsMdqqjscwz
RqMbHGJRJpgJgGgQjgrLTrTzjcrTrrLg
lwfwdhnflPlbCsVVjhCSbV
fwnNtwmlFZpbFZtM
QNSQrLTNrLNQRRrfHFrSjqhblWtSltqlWqtWWl
DvgBgnzgcvVZMljv
DGJdjBPDngDnDjBpBmFpTRmRFLRRmmCmHH
dtgSdTqdlvdJJvFqTvSqJqqRMPBtLHPBnWbsbWbsbWtWtWHV
DjfCfmcpNrwZQCmmNrDZNZNpsHLHWBBbHVVcGGGbHGBbMVMB
fpNjCfzLNZjTllvzdSgFgJ
nHBfZmHTRwsZffjBnHfmRZHtLtdNPPlWvddWLWJlJldCldLC
zwrbphMMVFzMwdCWNPlCbPdDCD
hccMSpqShMSrhZTBwmTqHjqZmf
NJGGLwGsTSsNlJZhmtgCVlbWQWlQMtCbvb
pDjppDBRdjzqpHqDSDzjVMCCrCrWtgQWdtdQQCdb
fHpfRBPRzDpBFSqcSBRBSNhPNwwNNswJLhmmLNGJZL
RZbsPgnVDzTJcdGjDGmD
NwfQHQtpfppQhjVVjqVNJJTN
tLLtwSptVCSWpvVtRnrbWbMgFPMsgZss
VsQjSwwVSwsZzsvdscZvfrhPRpqBrBrbpzMrrTMh
JtNDTmtGJTmLCGFDCHtDhMMBRhqqRbPrfrbNRrbR
GDWLlDnFgZdTSTWv
gfQHRRpQgRqNSBtjqwjztzjtnL
FvsPgvDlFcmvmTLlBMVztnLwWLzL
cvZGDcvbPcmbTbrcDDPgvbTJdJfJHRhZSRSpRRfHdSpSZd
FGHHHWvBWrHHrWVZJvVtcSrtrTcrtcjMTjStSM
swpwfRhRmmmRQDzcJlcqMSMMqtbMTz
dQDRDDRQfmmQDNsLfwRJvZJWFWVnPWvvPddBnC
zVhHvhMVTnMJgcTzMcfGJtfBWRtBRqJWtqJb
hlZjZSQCZtfBbGjqbb
SQDNwplrDVnhDcVHgT
HHZmttZVLVMQQJwMfcDRfDbbMN
phWvTgBqqgBWsTPTzhWzhzfNGNNwfqfcDwJRRbNcJcbl
FnTsvnhppTPFTBpPzPvpBBpFVmtfCjfmjtCmFdStLmtdfjSd
hMTPPMNlLZNSGNbRBB
gjmrsrttsCnsCsttVsjvttvtZGFHdbZGWWWdZSWddBHHnSWH
BmvptjsrfjBgsvvfgmfQchMpMqqhcQPMMPMhLQ
dJHGnrJJpGpDpFzzDmfsfSSCbfTfMbbRDb
vLcwtWNgtVtSNWmTmTMCmhNhTRfM
jqVgqVvWwwLwwgqZgjVSrPGzHHHqFnrHnFGHJGdr
QcQcdgbzwJnzfgVnVwdHQbdBrrpplHvmhLjrlTphppLrjl
MsPssfSZMWGWqWssSNPqrmmLBvjhqTvhjBprhB
GRDDZMFNMGFCSNWFPDMMFWNnwVtdVdQfcgtddwQwzRJfQd
pMqCMBGpMMCnwnpBMGBlbVRFJFWsJzRdzHlWzzJdJsJd
jLLZjDgPbNPZTDbvftvZgzRFsRzRrRRHWFsJsFJc
TZZLDPjtmDmbqQGwQnVM
RjnNhBnnNNmJmBNhrqGpsHbHtstgTtTjqb
WVMfWwQTzWZDMtlsfldqpplstf
WVTWSTzwQWSSvQVZCQPTSZPvBcnmcvnrhmNcRFncNLRLJmnB
lffQcnNTQBBcwqsdcqjSspcWtD
MPMGrHGMMTqWTtDg
VGRGLrJHZzLHPzTNTmmBfZQFTNBQ
lQBPPrBrlnqBgSRhgZZZrLJr
VNcWMDZbJHhWfWff
VwvMwMvdwvdwjcwdwDDqsqsZQqPPzqzldPQtps
VVJcZJVrRSdcsddfsvvbvFZBnngBMzMZFD
hLLqLpqqWWphWjhlGlCHDFgzbvFBbgBFtnQpnngg
HlhlmmHBTqTHHmlLqjTGhHhPdwdmsdcSNSfNJRrRcfwVJdrr
HmhvmRzzHHrRMBJBjNJGDJRnJD
cbqcPqLWZwsgQWZwWPwWgPPbntJnrNftNNNBtNJJNDBNqdjB
lgwWgggQcWSzrlTHMHlp
FZhQpClCWLBlrNDZvrwrrNSH
ztTfjMjJjgsGrqvzDGwG
bMjfnjndjnJtfgMTwPjFhQhCLdQCFWQQLWQhch
PtrqPrrMCPChzCtLFRbtNgbdTjbF
GdZGvJSWWDGplFjbjLjLSTlL
vspvnZsVppBdBnBpDCszhzMsMzzPzPhcPC
PdCtdfCMfGmtfmtBSWrMQwSlwWwJNQ
qTqbcjqHTZTbcDqczTjjZvWrQvVWJQSVQZZSVVrJNr
qbqjRFTcHTcDFgcczRqFrPsGGGgnhtGssCdnffGmsP
vVbcMvqjjjmHCBCBBmBSSH
PzzLTrcrwQgfLGrJBHSGFSCHtRFBJt
cfsPrLDwQNgsrTNTQgLwVpWnVWvMNvqjjqvpMvlj
jbqZNjLbZQvcfhhQ
CWdCDWWMCgmJDnJmdQVzMSchvfcQVFShzf
WPgWGRWRHdPBsttrHvNtrl
MCJCCMCqcCqJsnssjQRlTvQQQQqTvqfQ
HGVmwmLVlZRzcGZG
FcchHmDFpFbDMDMbntsJ
vfNvvttvDRcrvRNRNTLDNRcVsFhwVBVTwbbFFVbVhbJMBB
CJGgSJHdgPPSnQnjnddHGGFMSMwMMsmsFMMFhFShMWMM
dGCdjgzHCPPGlHDDqJtqRcqJlpfR
CwtqqvwLwnwhtRLtdRnwnnRhPHpLLppTPPpTVfTHzJWVLTWB
sGDsZDllDrMFZVmGgsmDMlmHpJBHpcJFPPTHfJJPzfTHWz
srgVlGSgZVGGrRvwQwdqwtCvnS
MLPgDrgLzThhCTgg
GVfCbvVbVvhBHlmhvhHv
ZqRQffRwtNZWVZfZSMsSssncnDCDnL
VwBNhNNmhJswqjJsRzPgDvSgJvtgvgDt
rRMblbHFfRrSWvPPPgMzLW
ZFpFpCcprGfbrGfGCHclZfnGqmsjmBdNVjQqRBnqBsVNQwBh
VLQlZWQbcPgcPmWbgmDWLQzdpGMTTqdpMTNsbGsNpMSqdq
HChrwfffhJtfHwJTsDqThhDMpTGsjj
HvffCrtBzclQZvQD
dCBVJJmrJDlBdQJWZTTsWbdWThWpbM
FHjSPjwqwssSgqTMGbGWhTMHMMZG
FwLvLfLjjSPqFqgzwffFSvrlDJvrQrDVrnmBvrJsQm
hZCRbddrgrRSVgcGZjjLFGLZFQFp
nzPvMsPvtmvPNssPMqpcWVjGGcGLlqGcGN
TBzmTmzmVmrBSBRrRgdR
bwZZmwfFmcfCRswNWNBsjC
VDSdglSStRCCTNCD
VVVppGHGlrQnnGJbMmnmCh
nFhgnFVNtgtFVssgdgVtVtsqJPTNJvDSNqTZZzbzTDDzDq
HqLHqcwlBjLzPvPJCCvJ
HGrlHqlllHBppRrlwWFnnWfFFVhMnnWdFhfn
FsMFVszjggMMzWlPJlPPlLQsJv
nqnBSNlfZqSvLHnHvWLQTW
hShpfCCSRtfjgFjMzdjlpr
jsbDsQnnwPsFbZgSltWGdgJgpnSp
SCVvLhLRrzCNBhrCvddMJpWdWGvJGlgtpv
cHLBBVCcCNHrbcSQFwQTbDws
rMlbLgrRgpwTDbflcnHtSScwHdJdwHJB
CQCjjZPzGGzCzZQvBVBNdQNSJVcJ
jsPhCzhPqFZzZzChFlsbRRLrMfTbbcLTpD
dqjzmmmQBjBHCmWrgVGWrrrvrpgVpM
PLJnTFbJnhTDzrGgMlvrFMzF
SssPcDttntDSsLcCzHBmmwcmZQqH
fFfFSPHllPRpRfnmmFfHvHjgbsBQjsptBdBTTddjsDdt
ZqLJCLCZzzTgWjdzDjzb
ZhNLMrNcGrchLqcCVMqRvlSnFnRnmmGRggnPnP
HMCMCMrHfwMHtFwTtgHHbVjjbsRZDwDVRbZqjhBD
cDpmpdpNLNDcdZjZqZBNBqssRR
SLJSdPcznSvdvDcHFCftFTFWCTHnWt
NlMmlPClmdGldRZHJs
tgJJcJQcntHBsnBt
TfSgQhhccczSVQqrgSgTjFWqLWmwLFNJLWWPPwqM
GGwTHqWVdnTTVVqgngzzqHzGFbJspFccRsjDpDcjsRFDsdjR
rtLflllZSrhQPLBtQStZvhjDNjbcDNDRNFjCsCDCFs
mPLBQPtvtQZtBlLSmMqVGwHbVMqTHWmz
VvJCrqTvPvQrCpRNVRFGfZfmfG
HMzsdWsjhZSsJJZNZf
wHlbjnlzWCvqJBQlrD
FnVRRsVdSnSnFSRqTVdqBBDBhrDdmcddMcMQMhzm
HtZvJwHlgjlGlHJLNjJrMmrcmDQfDLczDrMhhh
vGGpJjttvlZljZllZvJZvwGqsSTRWSCpnCWTVPVmWWTWWn
wSHCNwwmcSMLSDFcwwSSHQvZnQjLZffZjZZbVZjVVb
JqsNJJGGqprJNtpWhGhspfnffTnTvZvVbZnTrfBQvV
GsWhdGtPWpghJRqhtNPmClczSlDglHMlczmwCH
TzRpjVRjFpVLTTdgrTgrGsZwrZZwgg
vQfSBdbDbMbQNBJrlhmGnrgrgwZhvm
SHSCbdbddcVWqqFPCLqR''';
