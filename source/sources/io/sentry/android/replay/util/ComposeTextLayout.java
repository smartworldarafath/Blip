package io.sentry.android.replay.util;

import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphKt;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.TextLayoutResult;
import java.util.ArrayList;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeTextLayout implements TextLayout {
    public final TextLayoutResult a;

    public ComposeTextLayout(TextLayoutResult textLayoutResult) {
        this.a = textLayoutResult;
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final int a(int i) {
        return MathKt.b(this.a.b.f(i));
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final int b(int i) {
        return MathKt.b(this.a.b.b(i));
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final int c() {
        return this.a.b.f;
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final float d(int i) {
        boolean z;
        TextLayoutResult textLayoutResult = this.a;
        MultiParagraph multiParagraph = textLayoutResult.b;
        if (multiParagraph.d > ((int) (textLayoutResult.c >> 32))) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            multiParagraph.m(i);
            ArrayList arrayList = multiParagraph.h;
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i, arrayList));
            return paragraphInfo.a.d.f.getLineWidth(i - paragraphInfo.d);
        }
        return textLayoutResult.e(i);
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final Integer e() {
        return null;
    }

    @Override // io.sentry.android.replay.util.TextLayout
    public final float f(int i) {
        TextLayoutResult textLayoutResult = this.a;
        if (textLayoutResult.b.d > ((int) (textLayoutResult.c >> 32))) {
            return 0.0f;
        }
        return textLayoutResult.d(i);
    }
}
