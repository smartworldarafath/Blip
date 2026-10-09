package androidx.media3.ui;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.LanguageFeatureSpan;
import defpackage.fe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubtitleView extends FrameLayout {
    public List j;
    public CaptionStyleCompat k;
    public float l;
    public float m;
    public boolean n;
    public boolean o;
    public int p;
    public Output q;
    public View r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Output {
        void a(List list, CaptionStyleCompat captionStyleCompat, float f, float f2);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = Collections.EMPTY_LIST;
        this.k = CaptionStyleCompat.g;
        this.l = 0.0533f;
        this.m = 0.08f;
        this.n = true;
        this.o = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, 0);
        this.q = canvasSubtitleOutput;
        this.r = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.p = 1;
    }

    private List<Cue> getCuesWithStylingPreferencesApplied() {
        if (this.n && this.o) {
            return this.j;
        }
        ArrayList arrayList = new ArrayList(this.j.size());
        for (int i = 0; i < this.j.size(); i++) {
            Cue.Builder a = ((Cue) this.j.get(i)).a();
            if (!this.n) {
                a.n = false;
                CharSequence charSequence = a.a;
                if (charSequence instanceof Spanned) {
                    if (!(charSequence instanceof Spannable)) {
                        a.b(SpannableString.valueOf(charSequence));
                    }
                    CharSequence charSequence2 = a.a;
                    charSequence2.getClass();
                    Spannable spannable = (Spannable) charSequence2;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof LanguageFeatureSpan)) {
                            spannable.removeSpan(obj);
                        }
                    }
                }
                SubtitleViewUtils.a(a);
            } else if (!this.o) {
                SubtitleViewUtils.a(a);
            }
            arrayList.add(a.a());
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private CaptionStyleCompat getUserCaptionStyle() {
        int i;
        int i2;
        int i3;
        boolean isInEditMode = isInEditMode();
        CaptionStyleCompat captionStyleCompat = CaptionStyleCompat.g;
        if (isInEditMode) {
            return captionStyleCompat;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        if (captioningManager != null && captioningManager.isEnabled()) {
            CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
            int i4 = -1;
            if (userStyle.hasForegroundColor()) {
                i = userStyle.foregroundColor;
            } else {
                i = -1;
            }
            if (userStyle.hasBackgroundColor()) {
                i2 = userStyle.backgroundColor;
            } else {
                i2 = -16777216;
            }
            int i5 = 0;
            if (userStyle.hasWindowColor()) {
                i3 = userStyle.windowColor;
            } else {
                i3 = 0;
            }
            if (userStyle.hasEdgeType()) {
                i5 = userStyle.edgeType;
            }
            if (userStyle.hasEdgeColor()) {
                i4 = userStyle.edgeColor;
            }
            return new CaptionStyleCompat(i, i2, i3, i5, i4, userStyle.getTypeface());
        }
        return captionStyleCompat;
    }

    private <T extends View & Output> void setView(T t) {
        removeView(this.r);
        View view = this.r;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).k.destroy();
        }
        this.r = t;
        this.q = t;
        addView(t);
    }

    public final void a() {
        setStyle(getUserCaptionStyle());
    }

    public final void b() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public final void c() {
        this.q.a(getCuesWithStylingPreferencesApplied(), this.k, this.l, this.m);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.o = z;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.n = z;
        c();
    }

    public void setBottomPaddingFraction(float f) {
        this.m = f;
        c();
    }

    public void setCues(List<Cue> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        this.j = list;
        c();
    }

    public void setFractionalTextSize(float f) {
        this.l = f;
        c();
    }

    public void setStyle(CaptionStyleCompat captionStyleCompat) {
        this.k = captionStyleCompat;
        c();
    }

    public void setViewType(int i) {
        if (this.p == i) {
            return;
        }
        if (i != 1) {
            if (i == 2) {
                setView(new WebViewSubtitleOutput(getContext()));
            } else {
                fe.h();
                return;
            }
        } else {
            setView(new CanvasSubtitleOutput(getContext(), 0));
        }
        this.p = i;
    }
}
