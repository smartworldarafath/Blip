package androidx.media3.extractor.text.subrip;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubripParser implements SubtitleParser {
    public static final Pattern d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");
    public static final Pattern e = Pattern.compile("\\{\\\\.*?\\}");
    public final StringBuilder a = new StringBuilder();
    public final ArrayList b = new ArrayList();
    public final ParsableByteArray c = new ParsableByteArray();

    public static long c(Matcher matcher, int i) {
        long j;
        String group = matcher.group(i + 1);
        if (group != null) {
            j = Long.parseLong(group) * 3600000;
        } else {
            j = 0;
        }
        String group2 = matcher.group(i + 2);
        group2.getClass();
        long parseLong = (Long.parseLong(group2) * 60000) + j;
        String group3 = matcher.group(i + 3);
        group3.getClass();
        long parseLong2 = (Long.parseLong(group3) * 1000) + parseLong;
        String group4 = matcher.group(i + 4);
        if (group4 != null) {
            parseLong2 += Long.parseLong(group4);
        }
        return parseLong2 * 1000;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r6v2 androidx.media3.extractor.text.CuesWithTiming, still in use, count: 2, list:
          (r6v2 androidx.media3.extractor.text.CuesWithTiming) from 0x010c: MOVE (r19v0 androidx.media3.extractor.text.CuesWithTiming) = (r6v2 androidx.media3.extractor.text.CuesWithTiming) (LINE:269)
          (r6v2 androidx.media3.extractor.text.CuesWithTiming) from 0x00ec: MOVE (r19v2 androidx.media3.extractor.text.CuesWithTiming) = (r6v2 androidx.media3.extractor.text.CuesWithTiming) (LINE:237)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:80)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:56)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:447)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void b(byte[] r23, int r24, int r25, androidx.media3.common.util.Consumer r26) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.text.subrip.SubripParser.b(byte[], int, int, androidx.media3.common.util.Consumer):void");
    }
}
