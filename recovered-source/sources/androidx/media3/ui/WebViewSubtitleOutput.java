package androidx.media3.ui;

import android.content.Context;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.TextEmphasisSpan;
import androidx.media3.common.util.Util;
import androidx.media3.ui.SpannedToHtmlConverter;
import androidx.media3.ui.SubtitleView;
import com.google.common.base.Preconditions;
import defpackage.jb;
import defpackage.q;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.Output {
    public final CanvasSubtitleOutput j;
    public final WebView k;
    public List l;
    public CaptionStyleCompat m;
    public float n;
    public float o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.ui.WebViewSubtitleOutput$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends WebView {
        @Override // android.webkit.WebView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            super.performClick();
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.ui.WebViewSubtitleOutput$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public WebViewSubtitleOutput(Context context) {
        super(context, null);
        this.l = Collections.EMPTY_LIST;
        this.m = CaptionStyleCompat.g;
        this.n = 0.0533f;
        this.o = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, 0);
        this.j = canvasSubtitleOutput;
        WebView webView = new WebView(context, null);
        this.k = webView;
        webView.setBackgroundColor(0);
        webView.getSettings().setAllowContentAccess(false);
        addView(canvasSubtitleOutput);
        addView(webView);
    }

    @Override // androidx.media3.ui.SubtitleView.Output
    public final void a(List list, CaptionStyleCompat captionStyleCompat, float f, float f2) {
        this.m = captionStyleCompat;
        this.n = f;
        this.o = f2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Cue cue = (Cue) list.get(i);
            if (cue.d != null) {
                arrayList.add(cue);
            } else {
                arrayList2.add(cue);
            }
        }
        if (!this.l.isEmpty() || !arrayList2.isEmpty()) {
            this.l = arrayList2;
            c();
        }
        this.j.a(arrayList, captionStyleCompat, f, f2);
        invalidate();
    }

    public final String b(int i, float f) {
        float b = SubtitleViewUtils.b(i, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (b == -3.4028235E38f) {
            return "unset";
        }
        Object[] objArr = {Float.valueOf(b / getContext().getResources().getDisplayMetrics().density)};
        String str = Util.a;
        return String.format(Locale.US, "%.2fpx", objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:262:0x01f0, code lost:
    
        if (r25 != 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x01f3, code lost:
    
        r10 = "left";
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x01f4, code lost:
    
        r27 = r10;
        r25 = "top";
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x01f9, code lost:
    
        if (r25 != 0) goto L87;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x051b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0241  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        String format;
        float f;
        float f2;
        int i;
        String format2;
        String str;
        int i2;
        float f3;
        String str2;
        Layout.Alignment alignment;
        int i3;
        Object obj;
        int i4;
        String str3;
        int i5;
        String str4;
        Object obj2;
        String str5;
        CharSequence charSequence;
        String str6;
        String str7;
        float f4;
        String str8;
        String str9;
        String str10;
        SpannedToHtmlConverter.HtmlAndCss htmlAndCss;
        boolean z;
        String str11;
        Object[] objArr;
        int i6;
        int i7;
        int i8;
        String str12;
        String format3;
        float size;
        String str13;
        float f5;
        String str14;
        Layout.Alignment alignment2;
        int i9;
        String str15;
        String str16;
        boolean z2;
        int i10;
        StringBuilder sb = new StringBuilder();
        String a = HtmlUtils.a(this.m.a);
        int i11 = 0;
        String b = b(0, this.n);
        float f6 = 1.2f;
        Float valueOf = Float.valueOf(1.2f);
        CaptionStyleCompat captionStyleCompat = this.m;
        int i12 = captionStyleCompat.d;
        int i13 = captionStyleCompat.e;
        int i14 = 2;
        int i15 = 1;
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 != 3) {
                    if (i12 != 4) {
                        format = "unset";
                    } else {
                        String a2 = HtmlUtils.a(i13);
                        String str17 = Util.a;
                        Locale locale = Locale.US;
                        format = "-0.05em -0.05em 0.15em ".concat(a2);
                    }
                } else {
                    String a3 = HtmlUtils.a(i13);
                    String str18 = Util.a;
                    Locale locale2 = Locale.US;
                    format = "0.06em 0.08em 0.15em ".concat(a3);
                }
            } else {
                String a4 = HtmlUtils.a(i13);
                String str19 = Util.a;
                Locale locale3 = Locale.US;
                format = "0.1em 0.12em 0.15em ".concat(a4);
            }
        } else {
            Object[] objArr2 = {HtmlUtils.a(i13)};
            String str20 = Util.a;
            format = String.format(Locale.US, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", objArr2);
        }
        Object[] objArr3 = {a, b, valueOf, format};
        String str21 = Util.a;
        sb.append(String.format(Locale.US, "<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", objArr3));
        HashMap hashMap = new HashMap();
        String a5 = HtmlUtils.a(this.m.b);
        String str22 = "background-color:";
        StringBuilder sb2 = new StringBuilder("background-color:");
        sb2.append(a5);
        String str23 = ";";
        sb2.append(";");
        hashMap.put(".default_bg,.default_bg *", sb2.toString());
        int i16 = 0;
        while (i16 < this.l.size()) {
            Cue cue = (Cue) this.l.get(i16);
            float f7 = cue.h;
            int i17 = cue.p;
            if (f7 != -3.4028235E38f) {
                f = f7 * 100.0f;
            } else {
                f = 50.0f;
            }
            float f8 = f6;
            int i18 = cue.i;
            int i19 = -50;
            int i20 = -100;
            if (i18 != i15) {
                if (i18 != i14) {
                    i = i11;
                    f2 = -3.4028235E38f;
                } else {
                    f2 = -3.4028235E38f;
                    i = -100;
                }
            } else {
                f2 = -3.4028235E38f;
                i = -50;
            }
            float f9 = cue.e;
            if (f9 != f2) {
                if (cue.f != i15) {
                    format2 = String.format(Locale.US, "%.2f%%", Float.valueOf(f9 * 100.0f));
                    int i21 = cue.g;
                    if (i17 == i15) {
                        if (i21 != i15) {
                            if (i21 != i14) {
                                i10 = 0;
                            } else {
                                i10 = -100;
                            }
                        } else {
                            i10 = -50;
                        }
                        i20 = -i10;
                    } else {
                        if (i21 != i15) {
                            if (i21 != i14) {
                                i19 = 0;
                            } else {
                                i19 = -100;
                            }
                        }
                        i20 = i19;
                    }
                } else {
                    if (f9 >= 0.0f) {
                        str = String.format(Locale.US, "%.2fem", Float.valueOf(f9 * f8));
                        i2 = 0;
                    } else {
                        str = String.format(Locale.US, "%.2fem", Float.valueOf(((-f9) - 1.0f) * f8));
                        i2 = i15;
                    }
                    i20 = 0;
                    f3 = cue.j;
                    if (f3 == f2) {
                        str2 = String.format(Locale.US, "%.2f%%", Float.valueOf(f3 * 100.0f));
                    } else {
                        str2 = "fit-content";
                    }
                    String str24 = str2;
                    alignment = cue.b;
                    String str25 = "end";
                    if (alignment != null) {
                        i4 = i15;
                        obj = "center";
                        i3 = 2;
                    } else {
                        int i22 = AnonymousClass2.a[alignment.ordinal()];
                        if (i22 != i15) {
                            i3 = 2;
                            if (i22 == 2) {
                                obj = "end";
                            } else {
                                obj = "center";
                            }
                        } else {
                            i3 = 2;
                            obj = "start";
                        }
                        i4 = 1;
                    }
                    if (i17 == i4) {
                        if (i17 != i3) {
                            str3 = "horizontal-tb";
                        } else {
                            str3 = "vertical-lr";
                        }
                    } else {
                        str3 = "vertical-rl";
                    }
                    String str26 = str3;
                    String b2 = b(cue.n, cue.o);
                    if (!cue.l) {
                        i5 = cue.m;
                    } else {
                        i5 = this.m.c;
                    }
                    String a6 = HtmlUtils.a(i5);
                    String str27 = "right";
                    String str28 = "top";
                    int i23 = i2;
                    if (i17 == 1) {
                        if (i17 != 2) {
                            if (i23 != 0) {
                                str28 = "bottom";
                            }
                            obj2 = "left";
                            str4 = str28;
                        }
                    }
                    if (i17 == 2 && i17 != 1) {
                        str5 = "width";
                    } else {
                        str5 = "height";
                        int i24 = i20;
                        i20 = i;
                        i = i24;
                    }
                    String str29 = str5;
                    charSequence = cue.a;
                    float f10 = getContext().getResources().getDisplayMetrics().density;
                    Pattern pattern = SpannedToHtmlConverter.a;
                    int i25 = i;
                    int i26 = i16;
                    if (charSequence == null) {
                        str6 = "";
                        if (!(charSequence instanceof Spanned)) {
                            str9 = str23;
                            htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(SpannedToHtmlConverter.a(charSequence));
                        } else {
                            Spanned spanned = (Spanned) charSequence;
                            HashSet hashSet = new HashSet();
                            str7 = "start";
                            f4 = f;
                            BackgroundColorSpan[] backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                            int length = backgroundColorSpanArr.length;
                            int i27 = 0;
                            while (i27 < length) {
                                hashSet.add(Integer.valueOf(backgroundColorSpanArr[i27].getBackgroundColor()));
                                i27++;
                                backgroundColorSpanArr = backgroundColorSpanArr;
                            }
                            HashMap hashMap2 = new HashMap();
                            Iterator it = hashSet.iterator();
                            while (it.hasNext()) {
                                int intValue = ((Integer) it.next()).intValue();
                                String g = q.g(intValue, "bg_");
                                Iterator it2 = it;
                                String h = jb.h(".", g, ",.", g, " *");
                                String a7 = HtmlUtils.a(intValue);
                                String str30 = Util.a;
                                Locale locale4 = Locale.US;
                                hashMap2.put(h, str22 + a7 + str23);
                                it = it2;
                                str25 = str25;
                            }
                            str8 = str25;
                            SparseArray sparseArray = new SparseArray();
                            Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
                            int length2 = spans.length;
                            int i28 = 0;
                            while (i28 < length2) {
                                Object obj3 = spans[i28];
                                String str31 = str23;
                                boolean z3 = obj3 instanceof StrikethroughSpan;
                                String str32 = null;
                                if (z3) {
                                    z = z3;
                                    format3 = "<span style='text-decoration:line-through;'>";
                                    str11 = str22;
                                } else {
                                    z = z3;
                                    if (obj3 instanceof ForegroundColorSpan) {
                                        String a8 = HtmlUtils.a(((ForegroundColorSpan) obj3).getForegroundColor());
                                        String str33 = Util.a;
                                        Locale locale5 = Locale.US;
                                        str11 = str22;
                                        format3 = q.i("<span style='color:", a8, ";'>");
                                    } else {
                                        str11 = str22;
                                        if (obj3 instanceof BackgroundColorSpan) {
                                            int backgroundColor = ((BackgroundColorSpan) obj3).getBackgroundColor();
                                            String str34 = Util.a;
                                            Locale locale6 = Locale.US;
                                            objArr = spans;
                                            format3 = jb.d("<span class='bg_", backgroundColor, "'>");
                                        } else {
                                            objArr = spans;
                                            if (obj3 instanceof HorizontalTextInVerticalContextSpan) {
                                                format3 = "<span style='text-combine-upright:all;'>";
                                            } else if (obj3 instanceof AbsoluteSizeSpan) {
                                                AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj3;
                                                if (absoluteSizeSpan.getDip()) {
                                                    size = absoluteSizeSpan.getSize();
                                                } else {
                                                    size = absoluteSizeSpan.getSize() / f10;
                                                }
                                                Object[] objArr4 = {Float.valueOf(size)};
                                                String str35 = Util.a;
                                                format3 = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr4);
                                            } else if (obj3 instanceof RelativeSizeSpan) {
                                                Object[] objArr5 = {Float.valueOf(((RelativeSizeSpan) obj3).getSizeChange() * 100.0f)};
                                                String str36 = Util.a;
                                                format3 = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr5);
                                            } else {
                                                if (obj3 instanceof TypefaceSpan) {
                                                    String family = ((TypefaceSpan) obj3).getFamily();
                                                    if (family != null) {
                                                        String str37 = Util.a;
                                                        Locale locale7 = Locale.US;
                                                        format3 = q.i("<span style='font-family:\"", family, "\";'>");
                                                    }
                                                    i6 = length2;
                                                    i7 = i28;
                                                    format3 = null;
                                                } else if (obj3 instanceof StyleSpan) {
                                                    int style = ((StyleSpan) obj3).getStyle();
                                                    if (style != 1) {
                                                        if (style != 2) {
                                                            if (style == 3) {
                                                                format3 = "<b><i>";
                                                            }
                                                            i6 = length2;
                                                            i7 = i28;
                                                            format3 = null;
                                                        } else {
                                                            format3 = "<i>";
                                                        }
                                                    } else {
                                                        format3 = "<b>";
                                                    }
                                                } else if (obj3 instanceof RubySpan) {
                                                    int i29 = ((RubySpan) obj3).b;
                                                    if (i29 != -1) {
                                                        if (i29 != 1) {
                                                            if (i29 == 2) {
                                                                format3 = "<ruby style='ruby-position:under;'>";
                                                            }
                                                            i6 = length2;
                                                            i7 = i28;
                                                            format3 = null;
                                                        } else {
                                                            format3 = "<ruby style='ruby-position:over;'>";
                                                        }
                                                    } else {
                                                        format3 = "<ruby style='ruby-position:unset;'>";
                                                    }
                                                } else if (obj3 instanceof UnderlineSpan) {
                                                    format3 = "<u>";
                                                } else {
                                                    if (obj3 instanceof TextEmphasisSpan) {
                                                        TextEmphasisSpan textEmphasisSpan = (TextEmphasisSpan) obj3;
                                                        int i30 = textEmphasisSpan.a;
                                                        int i31 = textEmphasisSpan.b;
                                                        i6 = length2;
                                                        StringBuilder sb3 = new StringBuilder();
                                                        i7 = i28;
                                                        if (i31 != 1) {
                                                            i8 = 2;
                                                            if (i31 == 2) {
                                                                sb3.append("open ");
                                                            }
                                                        } else {
                                                            i8 = 2;
                                                            sb3.append("filled ");
                                                        }
                                                        if (i30 != 0) {
                                                            if (i30 != 1) {
                                                                if (i30 != i8) {
                                                                    if (i30 != 3) {
                                                                        sb3.append("unset");
                                                                    } else {
                                                                        sb3.append("sesame");
                                                                    }
                                                                } else {
                                                                    sb3.append("dot");
                                                                }
                                                            } else {
                                                                sb3.append("circle");
                                                            }
                                                        } else {
                                                            sb3.append("none");
                                                        }
                                                        String sb4 = sb3.toString();
                                                        if (textEmphasisSpan.c != 2) {
                                                            str12 = "over right";
                                                        } else {
                                                            str12 = "under left";
                                                        }
                                                        Object[] objArr6 = {sb4, str12};
                                                        String str38 = Util.a;
                                                        format3 = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr6);
                                                    }
                                                    i6 = length2;
                                                    i7 = i28;
                                                    format3 = null;
                                                }
                                                if (!z || (obj3 instanceof ForegroundColorSpan) || (obj3 instanceof BackgroundColorSpan) || (obj3 instanceof HorizontalTextInVerticalContextSpan) || (obj3 instanceof AbsoluteSizeSpan) || (obj3 instanceof RelativeSizeSpan) || (obj3 instanceof TextEmphasisSpan)) {
                                                    str13 = "</span>";
                                                } else if (obj3 instanceof TypefaceSpan) {
                                                    if (((TypefaceSpan) obj3).getFamily() != null) {
                                                        str13 = "</span>";
                                                    } else {
                                                        str13 = null;
                                                    }
                                                } else {
                                                    if (obj3 instanceof StyleSpan) {
                                                        int style2 = ((StyleSpan) obj3).getStyle();
                                                        if (style2 != 1) {
                                                            if (style2 != 2) {
                                                                if (style2 == 3) {
                                                                    str32 = "</i></b>";
                                                                }
                                                            } else {
                                                                str32 = "</i>";
                                                            }
                                                        } else {
                                                            str32 = "</b>";
                                                        }
                                                    } else if (obj3 instanceof RubySpan) {
                                                        str32 = q.l(new StringBuilder("<rt>"), SpannedToHtmlConverter.a(((RubySpan) obj3).a), "</rt></ruby>");
                                                    } else if (obj3 instanceof UnderlineSpan) {
                                                        str32 = "</u>";
                                                    }
                                                    str13 = str32;
                                                }
                                                int spanStart = spanned.getSpanStart(obj3);
                                                int spanEnd = spanned.getSpanEnd(obj3);
                                                if (format3 != null) {
                                                    str13.getClass();
                                                    SpannedToHtmlConverter.SpanInfo spanInfo = new SpannedToHtmlConverter.SpanInfo(spanStart, spanEnd, format3, str13);
                                                    SpannedToHtmlConverter.Transition transition = (SpannedToHtmlConverter.Transition) sparseArray.get(spanStart);
                                                    if (transition == null) {
                                                        transition = new SpannedToHtmlConverter.Transition();
                                                        sparseArray.put(spanStart, transition);
                                                    }
                                                    transition.a.add(spanInfo);
                                                    SpannedToHtmlConverter.Transition transition2 = (SpannedToHtmlConverter.Transition) sparseArray.get(spanEnd);
                                                    if (transition2 == null) {
                                                        transition2 = new SpannedToHtmlConverter.Transition();
                                                        sparseArray.put(spanEnd, transition2);
                                                    }
                                                    transition2.b.add(spanInfo);
                                                }
                                                i28 = i7 + 1;
                                                str23 = str31;
                                                str22 = str11;
                                                spans = objArr;
                                                length2 = i6;
                                            }
                                        }
                                        i6 = length2;
                                        i7 = i28;
                                        if (!z) {
                                        }
                                        str13 = "</span>";
                                        int spanStart2 = spanned.getSpanStart(obj3);
                                        int spanEnd2 = spanned.getSpanEnd(obj3);
                                        if (format3 != null) {
                                        }
                                        i28 = i7 + 1;
                                        str23 = str31;
                                        str22 = str11;
                                        spans = objArr;
                                        length2 = i6;
                                    }
                                }
                                objArr = spans;
                                i6 = length2;
                                i7 = i28;
                                if (!z) {
                                }
                                str13 = "</span>";
                                int spanStart22 = spanned.getSpanStart(obj3);
                                int spanEnd22 = spanned.getSpanEnd(obj3);
                                if (format3 != null) {
                                }
                                i28 = i7 + 1;
                                str23 = str31;
                                str22 = str11;
                                spans = objArr;
                                length2 = i6;
                            }
                            str9 = str23;
                            str10 = str22;
                            StringBuilder sb5 = new StringBuilder(spanned.length());
                            int i32 = 0;
                            int i33 = 0;
                            while (i33 < sparseArray.size()) {
                                int keyAt = sparseArray.keyAt(i33);
                                sb5.append(SpannedToHtmlConverter.a(spanned.subSequence(i32, keyAt)));
                                SpannedToHtmlConverter.Transition transition3 = (SpannedToHtmlConverter.Transition) sparseArray.get(keyAt);
                                ArrayList arrayList = transition3.b;
                                ArrayList arrayList2 = transition3.a;
                                SparseArray sparseArray2 = sparseArray;
                                Collections.sort(arrayList, SpannedToHtmlConverter.SpanInfo.f);
                                Iterator it3 = transition3.b.iterator();
                                while (it3.hasNext()) {
                                    sb5.append(((SpannedToHtmlConverter.SpanInfo) it3.next()).d);
                                }
                                Collections.sort(arrayList2, SpannedToHtmlConverter.SpanInfo.e);
                                Iterator it4 = arrayList2.iterator();
                                while (it4.hasNext()) {
                                    sb5.append(((SpannedToHtmlConverter.SpanInfo) it4.next()).c);
                                }
                                i33++;
                                i32 = keyAt;
                                sparseArray = sparseArray2;
                            }
                            sb5.append(SpannedToHtmlConverter.a(spanned.subSequence(i32, spanned.length())));
                            htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(sb5.toString());
                            for (String str39 : hashMap.keySet()) {
                                String str40 = (String) hashMap.put(str39, (String) hashMap.get(str39));
                                if (str40 != null && !str40.equals(hashMap.get(str39))) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                Preconditions.n(z2);
                            }
                            Integer valueOf2 = Integer.valueOf(i26);
                            Float valueOf3 = Float.valueOf(f4);
                            Integer valueOf4 = Integer.valueOf(i25);
                            Integer valueOf5 = Integer.valueOf(i20);
                            f5 = cue.q;
                            if (f5 != 0.0f) {
                                if (i17 != 2 && i17 != 1) {
                                    str16 = "skewX";
                                } else {
                                    str16 = "skewY";
                                }
                                Object[] objArr7 = {str16, Float.valueOf(f5)};
                                String str41 = Util.a;
                                str14 = String.format(Locale.US, "%s(%.2fdeg)", objArr7);
                            } else {
                                str14 = str6;
                            }
                            sb.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", valueOf2, obj2, valueOf3, str4, str, str29, str24, obj, str26, b2, a6, valueOf4, valueOf5, str14));
                            sb.append("<span class='default_bg'>");
                            alignment2 = cue.c;
                            String str42 = htmlAndCss.a;
                            if (alignment2 != null) {
                                int i34 = AnonymousClass2.a[alignment2.ordinal()];
                                if (i34 != 1) {
                                    i9 = 2;
                                    if (i34 != 2) {
                                        str15 = "center";
                                    } else {
                                        str15 = str8;
                                    }
                                } else {
                                    i9 = 2;
                                    str15 = str7;
                                }
                                sb.append("<span style='display:inline-block; text-align:" + str15 + ";'>");
                                sb.append(str42);
                                sb.append("</span>");
                            } else {
                                i9 = 2;
                                sb.append(str42);
                            }
                            sb.append("</span></div>");
                            i16 = i26 + 1;
                            i14 = i9;
                            f6 = f8;
                            str23 = str9;
                            str22 = str10;
                            i11 = 0;
                            i15 = 1;
                        }
                    } else {
                        htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss("");
                        str9 = str23;
                        str6 = "";
                    }
                    str10 = str22;
                    str7 = "start";
                    f4 = f;
                    str8 = "end";
                    while (r3.hasNext()) {
                    }
                    Integer valueOf22 = Integer.valueOf(i26);
                    Float valueOf32 = Float.valueOf(f4);
                    Integer valueOf42 = Integer.valueOf(i25);
                    Integer valueOf52 = Integer.valueOf(i20);
                    f5 = cue.q;
                    if (f5 != 0.0f) {
                    }
                    sb.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", valueOf22, obj2, valueOf32, str4, str, str29, str24, obj, str26, b2, a6, valueOf42, valueOf52, str14));
                    sb.append("<span class='default_bg'>");
                    alignment2 = cue.c;
                    String str422 = htmlAndCss.a;
                    if (alignment2 != null) {
                    }
                    sb.append("</span></div>");
                    i16 = i26 + 1;
                    i14 = i9;
                    f6 = f8;
                    str23 = str9;
                    str22 = str10;
                    i11 = 0;
                    i15 = 1;
                }
            } else {
                format2 = String.format(Locale.US, "%.2f%%", Float.valueOf((1.0f - this.o) * 100.0f));
            }
            str = format2;
            i2 = 0;
            f3 = cue.j;
            if (f3 == f2) {
            }
            String str242 = str2;
            alignment = cue.b;
            String str252 = "end";
            if (alignment != null) {
            }
            if (i17 == i4) {
            }
            String str262 = str3;
            String b22 = b(cue.n, cue.o);
            if (!cue.l) {
            }
            String a62 = HtmlUtils.a(i5);
            String str272 = "right";
            String str282 = "top";
            int i232 = i2;
            if (i17 == 1) {
            }
            if (i17 == 2) {
            }
            str5 = "height";
            int i242 = i20;
            i20 = i;
            i = i242;
            String str292 = str5;
            charSequence = cue.a;
            float f102 = getContext().getResources().getDisplayMetrics().density;
            Pattern pattern2 = SpannedToHtmlConverter.a;
            int i252 = i;
            int i262 = i16;
            if (charSequence == null) {
            }
            str10 = str22;
            str7 = "start";
            f4 = f;
            str8 = "end";
            while (r3.hasNext()) {
            }
            Integer valueOf222 = Integer.valueOf(i262);
            Float valueOf322 = Float.valueOf(f4);
            Integer valueOf422 = Integer.valueOf(i252);
            Integer valueOf522 = Integer.valueOf(i20);
            f5 = cue.q;
            if (f5 != 0.0f) {
            }
            sb.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", valueOf222, obj2, valueOf322, str4, str, str292, str242, obj, str262, b22, a62, valueOf422, valueOf522, str14));
            sb.append("<span class='default_bg'>");
            alignment2 = cue.c;
            String str4222 = htmlAndCss.a;
            if (alignment2 != null) {
            }
            sb.append("</span></div>");
            i16 = i262 + 1;
            i14 = i9;
            f6 = f8;
            str23 = str9;
            str22 = str10;
            i11 = 0;
            i15 = 1;
        }
        sb.append("</div></body></html>");
        StringBuilder sb6 = new StringBuilder();
        sb6.append("<html><head><style>");
        for (String str43 : hashMap.keySet()) {
            sb6.append(str43);
            sb6.append("{");
            sb6.append((String) hashMap.get(str43));
            sb6.append("}");
        }
        sb6.append("</style></head>");
        sb.insert(0, (CharSequence) sb6);
        this.k.loadData(Base64.encodeToString(sb.toString().getBytes(StandardCharsets.UTF_8), 1), "text/html", "base64");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z && !this.l.isEmpty()) {
            c();
        }
    }
}
