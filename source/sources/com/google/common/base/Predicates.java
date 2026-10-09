package com.google.common.base;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Predicates {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AndPredicate<T> implements Predicate<T>, Serializable {
        public final List j;

        public AndPredicate(List list) {
            this.j = list;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            int i = 0;
            while (true) {
                List list = this.j;
                if (i < list.size()) {
                    if (!((Predicate) list.get(i)).apply(obj)) {
                        return false;
                    }
                    i++;
                } else {
                    return true;
                }
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                return this.j.equals(((AndPredicate) obj).j);
            }
            return false;
        }

        public final int hashCode() {
            return this.j.hashCode() + 306654252;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Predicates.and(");
            boolean z = true;
            for (T t : this.j) {
                if (!z) {
                    sb.append(',');
                }
                sb.append(t);
                z = false;
            }
            sb.append(')');
            return sb.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ObjectPredicate implements Predicate<Object> {
        public static final AnonymousClass1 j;
        public static final /* synthetic */ ObjectPredicate[] k;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.Predicates$ObjectPredicate$1] */
        static {
            ?? r0 = new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return true;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "Predicates.alwaysTrue()";
                }
            };
            j = r0;
            k = new ObjectPredicate[]{r0, new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.2
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return false;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "Predicates.alwaysFalse()";
                }
            }, new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.3
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    if (obj == null) {
                        return true;
                    }
                    return false;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "Predicates.isNull()";
                }
            }, new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.4
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    if (obj != null) {
                        return true;
                    }
                    return false;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "Predicates.notNull()";
                }
            }};
        }

        public static ObjectPredicate valueOf(String str) {
            return (ObjectPredicate) Enum.valueOf(ObjectPredicate.class, str);
        }

        public static ObjectPredicate[] values() {
            return (ObjectPredicate[]) k.clone();
        }
    }

    public static Predicate a() {
        return ObjectPredicate.j;
    }

    public static Predicate b(Predicate predicate, Predicate predicate2) {
        predicate.getClass();
        return new AndPredicate(Arrays.asList(predicate, predicate2));
    }
}
