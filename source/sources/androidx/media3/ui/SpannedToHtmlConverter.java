package androidx.media3.ui;

import android.text.Html;
import androidx.media3.ui.SpannedToHtmlConverter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class SpannedToHtmlConverter {
    public static final Pattern a = Pattern.compile("(&#13;)?&#10;");

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class HtmlAndCss {
        public final String a;

        public HtmlAndCss(String str) {
            this.a = str;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SpanInfo {
        public static final h e;
        public static final h f;
        public final int a;
        public final int b;
        public final String c;
        public final String d;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.ui.h] */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.ui.h] */
        static {
            final int i = 0;
            e = new Comparator() { // from class: androidx.media3.ui.h
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SpannedToHtmlConverter.SpanInfo spanInfo = (SpannedToHtmlConverter.SpanInfo) obj;
                    SpannedToHtmlConverter.SpanInfo spanInfo2 = (SpannedToHtmlConverter.SpanInfo) obj2;
                    switch (i) {
                        case 0:
                            int compare = Integer.compare(spanInfo2.b, spanInfo.b);
                            if (compare == 0) {
                                int compareTo = spanInfo.c.compareTo(spanInfo2.c);
                                if (compareTo == 0) {
                                    return spanInfo.d.compareTo(spanInfo2.d);
                                }
                                return compareTo;
                            }
                            return compare;
                        default:
                            int compare2 = Integer.compare(spanInfo2.a, spanInfo.a);
                            if (compare2 == 0) {
                                int compareTo2 = spanInfo2.c.compareTo(spanInfo.c);
                                if (compareTo2 == 0) {
                                    return spanInfo2.d.compareTo(spanInfo.d);
                                }
                                return compareTo2;
                            }
                            return compare2;
                    }
                }
            };
            final int i2 = 1;
            f = new Comparator() { // from class: androidx.media3.ui.h
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SpannedToHtmlConverter.SpanInfo spanInfo = (SpannedToHtmlConverter.SpanInfo) obj;
                    SpannedToHtmlConverter.SpanInfo spanInfo2 = (SpannedToHtmlConverter.SpanInfo) obj2;
                    switch (i2) {
                        case 0:
                            int compare = Integer.compare(spanInfo2.b, spanInfo.b);
                            if (compare == 0) {
                                int compareTo = spanInfo.c.compareTo(spanInfo2.c);
                                if (compareTo == 0) {
                                    return spanInfo.d.compareTo(spanInfo2.d);
                                }
                                return compareTo;
                            }
                            return compare;
                        default:
                            int compare2 = Integer.compare(spanInfo2.a, spanInfo.a);
                            if (compare2 == 0) {
                                int compareTo2 = spanInfo2.c.compareTo(spanInfo.c);
                                if (compareTo2 == 0) {
                                    return spanInfo2.d.compareTo(spanInfo.d);
                                }
                                return compareTo2;
                            }
                            return compare2;
                    }
                }
            };
        }

        public SpanInfo(int i, int i2, String str, String str2) {
            this.a = i;
            this.b = i2;
            this.c = str;
            this.d = str2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Transition {
        public final ArrayList a = new ArrayList();
        public final ArrayList b = new ArrayList();
    }

    public static String a(CharSequence charSequence) {
        return a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
