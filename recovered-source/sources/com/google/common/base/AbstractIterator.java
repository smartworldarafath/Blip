package com.google.common.base;

import com.google.common.base.Splitter;
import defpackage.k8;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class AbstractIterator<T> implements Iterator<T> {
    public State j;
    public String k;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class State {
        public static final State j;
        public static final State k;
        public static final State l;
        public static final State m;
        public static final /* synthetic */ State[] n;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        static {
            ?? r0 = new Enum("READY", 0);
            j = r0;
            ?? r1 = new Enum("NOT_READY", 1);
            k = r1;
            ?? r2 = new Enum("DONE", 2);
            l = r2;
            ?? r3 = new Enum("FAILED", 3);
            m = r3;
            n = new State[]{r0, r1, r2, r3};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) n.clone();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z;
        State state;
        String str;
        CharMatcher charMatcher;
        State state2 = this.j;
        State state3 = State.m;
        if (state2 != state3) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        int ordinal = this.j.ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal != 2) {
            this.j = state3;
            Splitter.SplittingIterator splittingIterator = (Splitter.SplittingIterator) this;
            int i = splittingIterator.n;
            while (true) {
                int i2 = splittingIterator.n;
                state = State.l;
                if (i2 != -1) {
                    int b = splittingIterator.b(i2);
                    CharSequence charSequence = splittingIterator.l;
                    if (b == -1) {
                        b = charSequence.length();
                        splittingIterator.n = -1;
                    } else {
                        splittingIterator.n = splittingIterator.a(b);
                    }
                    int i3 = splittingIterator.n;
                    if (i3 == i) {
                        int i4 = i3 + 1;
                        splittingIterator.n = i4;
                        if (i4 > charSequence.length()) {
                            splittingIterator.n = -1;
                        }
                    } else {
                        while (true) {
                            charMatcher = splittingIterator.m;
                            if (i >= b || !charMatcher.b(charSequence.charAt(i))) {
                                break;
                            }
                            i++;
                        }
                        while (b > i && charMatcher.b(charSequence.charAt(b - 1))) {
                            b--;
                        }
                        int i5 = splittingIterator.o;
                        if (i5 == 1) {
                            b = charSequence.length();
                            splittingIterator.n = -1;
                            while (b > i && charMatcher.b(charSequence.charAt(b - 1))) {
                                b--;
                            }
                        } else {
                            splittingIterator.o = i5 - 1;
                        }
                        str = charSequence.subSequence(i, b).toString();
                    }
                } else {
                    splittingIterator.j = state;
                    str = null;
                    break;
                }
            }
            this.k = str;
            if (this.j != state) {
                this.j = State.j;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.j = State.k;
            String str = this.k;
            this.k = null;
            return str;
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
