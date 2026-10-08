package io.sentry.android.replay.util;

import android.text.Layout;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidTextLayout implements TextLayout {
    public final Layout a;

    public AndroidTextLayout(Layout layout) {
        this.a = layout;
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final int a(int i) {
        return this.a.getLineTop(i);
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final int b(int i) {
        return this.a.getLineBottom(i);
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final int c() {
        return this.a.getLineCount();
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final float d(int i) {
        Layout layout = this.a;
        if (layout.getEllipsizedWidth() > 0 && layout.getEllipsizedWidth() < layout.getWidth()) {
            return layout.getEllipsizedWidth();
        }
        return layout.getLineRight(i);
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final Integer e() {
        int i;
        Layout layout = this.a;
        if (layout.getText() instanceof Spanned) {
            CharSequence text = layout.getText();
            text.getClass();
            ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) ((Spanned) text).getSpans(0, layout.getText().length(), ForegroundColorSpan.class);
            foregroundColorSpanArr.getClass();
            int i2 = Integer.MIN_VALUE;
            Integer num = null;
            for (ForegroundColorSpan foregroundColorSpan : foregroundColorSpanArr) {
                CharSequence text2 = layout.getText();
                text2.getClass();
                int spanStart = ((Spanned) text2).getSpanStart(foregroundColorSpan);
                CharSequence text3 = layout.getText();
                text3.getClass();
                int spanEnd = ((Spanned) text3).getSpanEnd(foregroundColorSpan);
                if (spanStart != -1 && spanEnd != -1 && (i = spanEnd - spanStart) > i2) {
                    num = Integer.valueOf(foregroundColorSpan.getForegroundColor());
                    i2 = i;
                }
            }
            if (num != null) {
                return Integer.valueOf(num.intValue() | (-16777216));
            }
        }
        return null;
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final float f(int i) {
        Layout layout = this.a;
        if (layout.getEllipsizedWidth() > 0 && layout.getEllipsizedWidth() < layout.getWidth()) {
            return 0.0f;
        }
        return layout.getLineLeft(i);
    }
}
