package androidx.room;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ObservedTableStates {
    public final ReentrantLock a = new ReentrantLock();
    public final long[] b;
    public final boolean[] c;
    public boolean d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ObserveOp {
        public static final ObserveOp j;
        public static final ObserveOp k;
        public static final ObserveOp l;
        public static final /* synthetic */ ObserveOp[] m;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.ObservedTableStates$ObserveOp, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.room.ObservedTableStates$ObserveOp, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r2v2, types: [androidx.room.ObservedTableStates$ObserveOp, java.lang.Enum] */
        static {
            ?? r0 = new Enum("NO_OP", 0);
            j = r0;
            ?? r1 = new Enum("ADD", 1);
            k = r1;
            ?? r2 = new Enum("REMOVE", 2);
            l = r2;
            ObserveOp[] observeOpArr = {r0, r1, r2};
            m = observeOpArr;
            EnumEntriesKt.a(observeOpArr);
        }

        public static ObserveOp valueOf(String str) {
            return (ObserveOp) Enum.valueOf(ObserveOp.class, str);
        }

        public static ObserveOp[] values() {
            return (ObserveOp[]) m.clone();
        }
    }

    public ObservedTableStates(int i) {
        this.b = new long[i];
        this.c = new boolean[i];
    }
}
