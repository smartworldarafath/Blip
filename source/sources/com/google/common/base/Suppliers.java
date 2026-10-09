package com.google.common.base;

import defpackage.fe;
import java.io.Serializable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Suppliers {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MemoizingSupplier<T> implements Supplier<T>, Serializable {
        public final transient Object j = new Object();
        public final Supplier k;
        public volatile transient boolean l;
        public transient Object m;

        public MemoizingSupplier(Supplier supplier) {
            this.k = supplier;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            if (!this.l) {
                synchronized (this.j) {
                    try {
                        if (!this.l) {
                            Object obj = this.k.get();
                            this.m = obj;
                            this.l = true;
                            return obj;
                        }
                    } finally {
                    }
                }
            }
            return this.m;
        }

        public final String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder("Suppliers.memoize(");
            if (this.l) {
                obj = "<supplier that returned " + this.m + ">";
            } else {
                obj = this.k;
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class NonSerializableMemoizingSupplier<T> implements Supplier<T> {
        public static final fe m = new fe(9);
        public final Object j = new Object();
        public volatile Supplier k;
        public Object l;

        public NonSerializableMemoizingSupplier(Supplier supplier) {
            this.k = supplier;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            Supplier supplier = this.k;
            fe feVar = m;
            if (supplier != feVar) {
                synchronized (this.j) {
                    try {
                        if (this.k != feVar) {
                            Object obj = this.k.get();
                            this.l = obj;
                            this.k = feVar;
                            return obj;
                        }
                    } finally {
                    }
                }
            }
            return this.l;
        }

        public final String toString() {
            Object obj = this.k;
            StringBuilder sb = new StringBuilder("Suppliers.memoize(");
            if (obj == m) {
                obj = "<supplier that returned " + this.l + ">";
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    public static Supplier a(Supplier supplier) {
        if (!(supplier instanceof NonSerializableMemoizingSupplier)) {
            if (supplier instanceof MemoizingSupplier) {
                return supplier;
            }
            if (supplier instanceof Serializable) {
                return new MemoizingSupplier(supplier);
            }
            return new NonSerializableMemoizingSupplier(supplier);
        }
        return supplier;
    }
}
