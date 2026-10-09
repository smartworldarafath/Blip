package com.google.common.base;

import com.google.common.base.AbstractIterator;
import com.google.common.base.CharMatcher;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Splitter {
    public final Strategy b;
    public final CharMatcher a = CharMatcher.None.k;
    public final int c = Integer.MAX_VALUE;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class SplittingIterator extends AbstractIterator<String> {
        public final CharSequence l;
        public final CharMatcher m;
        public int n;
        public int o;

        public SplittingIterator(Splitter splitter, CharSequence charSequence) {
            this.j = AbstractIterator.State.k;
            this.n = 0;
            this.m = splitter.a;
            this.o = splitter.c;
            this.l = charSequence;
        }

        public abstract int a(int i);

        public abstract int b(int i);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Strategy {
        Iterator a(Splitter splitter, CharSequence charSequence);
    }

    public Splitter(Strategy strategy) {
        this.b = strategy;
    }

    public static Splitter a(char c) {
        final CharMatcher.Is is = new CharMatcher.Is(c);
        return new Splitter(new Strategy() { // from class: com.google.common.base.Splitter.1
            @Override // com.google.common.base.Splitter.Strategy
            public final Iterator a(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) { // from class: com.google.common.base.Splitter.1.1
                    @Override // com.google.common.base.Splitter.SplittingIterator
                    public final int a(int i) {
                        return i + 1;
                    }

                    @Override // com.google.common.base.Splitter.SplittingIterator
                    public final int b(int i) {
                        return CharMatcher.this.a(this.l, i);
                    }
                };
            }
        });
    }

    public static Splitter b(final String str) {
        boolean z;
        if (str.length() != 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d("The separator may not be the empty string.", z);
        if (str.length() == 1) {
            return a(str.charAt(0));
        }
        return new Splitter(new Strategy() { // from class: com.google.common.base.Splitter.2
            @Override // com.google.common.base.Splitter.Strategy
            public final Iterator a(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) { // from class: com.google.common.base.Splitter.2.1
                    @Override // com.google.common.base.Splitter.SplittingIterator
                    public final int a(int i) {
                        return str.length() + i;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
                    
                        r7 = r7 + 1;
                     */
                    @Override // com.google.common.base.Splitter.SplittingIterator
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final int b(int i) {
                        String str2 = str;
                        int length = str2.length();
                        CharSequence charSequence2 = this.l;
                        int length2 = charSequence2.length() - length;
                        while (i <= length2) {
                            for (int i2 = 0; i2 < length; i2++) {
                                if (charSequence2.charAt(i2 + i) != str2.charAt(i2)) {
                                    break;
                                }
                            }
                            return i;
                        }
                        return -1;
                    }
                };
            }
        });
    }

    public final List c(CharSequence charSequence) {
        charSequence.getClass();
        Iterator a = this.b.a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (a.hasNext()) {
            arrayList.add((String) a.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
