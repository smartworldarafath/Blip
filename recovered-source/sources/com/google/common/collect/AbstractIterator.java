package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractIterator<T> extends UnmodifiableIterator<T> {
    public State j = State.k;
    public Object k;

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

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.AbstractIterator$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.collect.AbstractIterator$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r2v2, types: [com.google.common.collect.AbstractIterator$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v2, types: [com.google.common.collect.AbstractIterator$State, java.lang.Enum] */
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

    public abstract Object a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z;
        State state = this.j;
        State state2 = State.m;
        if (state != state2) {
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
            this.j = state2;
            this.k = a();
            if (this.j != State.l) {
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
            Object obj = this.k;
            this.k = null;
            return obj;
        }
        k8.o();
        return null;
    }
}
