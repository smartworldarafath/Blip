package androidx.emoji2.text;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class UnprecomputeTextOnModificationSpannable implements Spannable {
    public boolean j = false;
    public Spannable k;

    public UnprecomputeTextOnModificationSpannable(Spannable spannable) {
        this.k = spannable;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.k.charAt(i);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.k.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.k.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.k.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.k.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.k.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i, int i2, Class cls) {
        return this.k.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.k.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.k.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        Spannable spannable = this.k;
        if (!this.j && (spannable instanceof PrecomputedText)) {
            this.k = new SpannableString(spannable);
        }
        this.j = true;
        this.k.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        Spannable spannable = this.k;
        if (!this.j && (spannable instanceof PrecomputedText)) {
            this.k = new SpannableString(spannable);
        }
        this.j = true;
        this.k.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.k.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.k.toString();
    }
}
