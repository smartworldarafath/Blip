package com.google.common.collect;

import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComparisonChain {
    public static final ComparisonChain a = new Object();
    public static final ComparisonChain b = new InactiveComparisonChain(-1);
    public static final ComparisonChain c = new InactiveComparisonChain(1);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.common.collect.ComparisonChain$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ComparisonChain {
        public static ComparisonChain f(int i) {
            if (i < 0) {
                return ComparisonChain.b;
            }
            if (i > 0) {
                return ComparisonChain.c;
            }
            return ComparisonChain.a;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain a(int i, int i2) {
            return f(Integer.compare(i, i2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain b(Object obj, Object obj2, Comparator comparator) {
            return f(comparator.compare(obj, obj2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain c(boolean z, boolean z2) {
            return f(Boolean.compare(z, z2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain d(boolean z, boolean z2) {
            return f(Boolean.compare(z2, z));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int e() {
            return 0;
        }
    }

    public abstract ComparisonChain a(int i, int i2);

    public abstract ComparisonChain b(Object obj, Object obj2, Comparator comparator);

    public abstract ComparisonChain c(boolean z, boolean z2);

    public abstract ComparisonChain d(boolean z, boolean z2);

    public abstract int e();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InactiveComparisonChain extends ComparisonChain {
        public final int d;

        public InactiveComparisonChain(int i) {
            this.d = i;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int e() {
            return this.d;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain a(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain c(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain d(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain b(Object obj, Object obj2, Comparator comparator) {
            return this;
        }
    }
}
