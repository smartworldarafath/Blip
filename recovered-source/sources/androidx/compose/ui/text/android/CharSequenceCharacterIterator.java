package androidx.compose.ui.text.android;

import defpackage.u2;
import java.text.CharacterIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CharSequenceCharacterIterator implements CharacterIterator {
    public final CharSequence j;
    public final int k;
    public int l = 0;

    public CharSequenceCharacterIterator(CharSequence charSequence, int i) {
        this.j = charSequence;
        this.k = i;
    }

    @Override // java.text.CharacterIterator
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.text.CharacterIterator
    public final char current() {
        int i = this.l;
        if (i == this.k) {
            return (char) 65535;
        }
        return this.j.charAt(i);
    }

    @Override // java.text.CharacterIterator
    public final char first() {
        this.l = 0;
        return current();
    }

    @Override // java.text.CharacterIterator
    public final int getBeginIndex() {
        return 0;
    }

    @Override // java.text.CharacterIterator
    public final int getEndIndex() {
        return this.k;
    }

    @Override // java.text.CharacterIterator
    public final int getIndex() {
        return this.l;
    }

    @Override // java.text.CharacterIterator
    public final char last() {
        int i = this.k;
        if (i == 0) {
            this.l = i;
            return (char) 65535;
        }
        int i2 = i - 1;
        this.l = i2;
        return this.j.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public final char next() {
        int i = this.l + 1;
        this.l = i;
        int i2 = this.k;
        if (i >= i2) {
            this.l = i2;
            return (char) 65535;
        }
        return this.j.charAt(i);
    }

    @Override // java.text.CharacterIterator
    public final char previous() {
        int i = this.l;
        if (i <= 0) {
            return (char) 65535;
        }
        int i2 = i - 1;
        this.l = i2;
        return this.j.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public final char setIndex(int i) {
        if (i <= this.k && i >= 0) {
            this.l = i;
            return current();
        }
        u2.g("invalid position");
        return (char) 0;
    }
}
