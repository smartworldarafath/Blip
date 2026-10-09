package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.ui.node.UiApplier;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PausedCompositionImpl {
    public final CompositionImpl a;
    public final CompositionContext b;
    public final InternalComposer c;
    public final Function2 d;
    public final boolean e;
    public final UiApplier f;
    public final Object g;
    public final AtomicReference h = new AtomicReference(PausedCompositionState.l);
    public long i = Thread_jvmKt.a();
    public ScatterSet j;
    public final RememberEventDispatcher k;
    public final RecordingApplier l;

    public PausedCompositionImpl(CompositionImpl compositionImpl, CompositionContext compositionContext, GapComposer gapComposer, Set set, Function2 function2, boolean z, UiApplier uiApplier, Object obj) {
        this.a = compositionImpl;
        this.b = compositionContext;
        this.c = gapComposer;
        this.d = function2;
        this.e = z;
        this.f = uiApplier;
        this.g = obj;
        MutableScatterSet mutableScatterSet = ScatterSetKt.a;
        mutableScatterSet.getClass();
        this.j = mutableScatterSet;
        RememberEventDispatcher rememberEventDispatcher = new RememberEventDispatcher();
        rememberEventDispatcher.g(set, gapComposer.y());
        this.k = rememberEventDispatcher;
        this.l = new RecordingApplier(uiApplier.c);
    }

    public final void a() {
        AtomicReference atomicReference = this.h;
        try {
            switch (((PausedCompositionState) atomicReference.get()).ordinal()) {
                case 0:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                case 1:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    throw new IllegalStateException("The paused composition has not completed yet");
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    b();
                    PausedCompositionState pausedCompositionState = PausedCompositionState.o;
                    PausedCompositionState pausedCompositionState2 = PausedCompositionState.p;
                    while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                        if (atomicReference.get() != pausedCompositionState) {
                            PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + ".");
                            return;
                        }
                    }
                    return;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    throw new IllegalStateException("The paused composition has already been applied");
                default:
                    throw new RuntimeException();
            }
        } catch (Exception e) {
            atomicReference.set(PausedCompositionState.j);
            throw e;
        }
    }

    public final void b() {
        Trace.beginSection("PausedComposition:applyChanges");
        try {
            synchronized (this.g) {
                try {
                    this.l.k(this.f, this.k);
                    this.k.c();
                    this.k.d();
                } finally {
                    this.k.b();
                    this.a.z = null;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    public final boolean c() {
        if (((PausedCompositionState) this.h.get()).compareTo(PausedCompositionState.o) >= 0) {
            return true;
        }
        return false;
    }

    public final void d() {
        boolean z;
        PausedCompositionState pausedCompositionState = PausedCompositionState.m;
        PausedCompositionState pausedCompositionState2 = PausedCompositionState.o;
        while (true) {
            AtomicReference atomicReference = this.h;
            if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                z = true;
                break;
            } else if (atomicReference.get() != pausedCompositionState) {
                z = false;
                break;
            }
        }
        if (!z) {
            PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + ".");
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    public final boolean e(ShouldPauseCallback shouldPauseCallback) {
        AtomicReference atomicReference = this.h;
        try {
            int ordinal = ((PausedCompositionState) atomicReference.get()).ordinal();
            CompositionImpl compositionImpl = this.a;
            CompositionContext compositionContext = this.b;
            switch (ordinal) {
                case 0:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                case 1:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    InternalComposer internalComposer = this.c;
                    boolean z = this.e;
                    if (z) {
                        GapComposer gapComposer = (GapComposer) internalComposer;
                        gapComposer.z = 0;
                        gapComposer.y = true;
                    }
                    this.j = compositionContext.b(compositionImpl, shouldPauseCallback, this.d);
                    if (z) {
                        GapComposer gapComposer2 = (GapComposer) internalComposer;
                        if (gapComposer2.F || gapComposer2.z != 0) {
                            PreconditionsKt.a("Cannot disable reuse from root if it was caused by other groups");
                        }
                        gapComposer2.z = -1;
                        gapComposer2.y = false;
                    }
                    PausedCompositionState pausedCompositionState = PausedCompositionState.l;
                    PausedCompositionState pausedCompositionState2 = PausedCompositionState.m;
                    while (true) {
                        if (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                            if (atomicReference.get() != pausedCompositionState) {
                                PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + ".");
                            }
                        }
                    }
                    if (this.j.b()) {
                        d();
                    }
                    return c();
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    PausedCompositionState pausedCompositionState3 = PausedCompositionState.m;
                    PausedCompositionState pausedCompositionState4 = PausedCompositionState.n;
                    while (true) {
                        if (!atomicReference.compareAndSet(pausedCompositionState3, pausedCompositionState4)) {
                            if (atomicReference.get() != pausedCompositionState3) {
                                PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState3 + " to: " + pausedCompositionState4 + ".");
                            }
                        }
                    }
                    long j = this.i;
                    try {
                        this.i = Thread_jvmKt.a();
                        this.j = compositionContext.n(compositionImpl, shouldPauseCallback, this.j);
                        this.i = j;
                        PausedCompositionState pausedCompositionState5 = PausedCompositionState.n;
                        PausedCompositionState pausedCompositionState6 = PausedCompositionState.m;
                        while (true) {
                            if (!atomicReference.compareAndSet(pausedCompositionState5, pausedCompositionState6)) {
                                if (atomicReference.get() != pausedCompositionState5) {
                                    PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState5 + " to: " + pausedCompositionState6 + ".");
                                }
                            }
                        }
                        if (this.j.b()) {
                            d();
                        }
                        return c();
                    } catch (Throwable th) {
                        this.i = j;
                        PausedCompositionState pausedCompositionState7 = PausedCompositionState.n;
                        PausedCompositionState pausedCompositionState8 = PausedCompositionState.m;
                        while (true) {
                            if (!atomicReference.compareAndSet(pausedCompositionState7, pausedCompositionState8)) {
                                if (atomicReference.get() != pausedCompositionState7) {
                                    PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState7 + " to: " + pausedCompositionState8 + ".");
                                }
                            }
                        }
                        throw th;
                    }
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    ComposerKt.b("Recursive call to resume()");
                    throw new RuntimeException();
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    throw new IllegalStateException("Pausable composition is complete and apply() should be applied");
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    throw new IllegalStateException("The paused composition has been applied");
                default:
                    throw new RuntimeException();
            }
        } catch (Exception e) {
            atomicReference.set(PausedCompositionState.j);
            throw e;
        }
    }
}
