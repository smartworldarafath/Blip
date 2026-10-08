package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.ui.node.UiApplier;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RecordingApplier<N> implements Applier<N> {
    public final MutableIntList a = new MutableIntList();
    public final MutableObjectList b = new MutableObjectList();
    public final Object c;

    public RecordingApplier(Object obj) {
        this.c = obj;
    }

    @Override // androidx.compose.runtime.Applier
    public final Object a() {
        return this.c;
    }

    @Override // androidx.compose.runtime.Applier
    public final void b(int i, Object obj) {
        MutableIntList mutableIntList = this.a;
        mutableIntList.b(5);
        mutableIntList.b(i);
        this.b.g(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void c(Object obj) {
        this.a.b(1);
        this.b.g(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void d() {
        this.a.b(8);
    }

    @Override // androidx.compose.runtime.Applier
    public final void e(int i, int i2, int i3) {
        MutableIntList mutableIntList = this.a;
        mutableIntList.b(3);
        mutableIntList.b(i);
        mutableIntList.b(i2);
        mutableIntList.b(i3);
    }

    @Override // androidx.compose.runtime.Applier
    public final void f(int i, int i2) {
        MutableIntList mutableIntList = this.a;
        mutableIntList.b(2);
        mutableIntList.b(i);
        mutableIntList.b(i2);
    }

    @Override // androidx.compose.runtime.Applier
    public final void g() {
        this.a.b(0);
    }

    @Override // androidx.compose.runtime.Applier
    public final void h(Object obj, Function2 function2) {
        this.a.b(7);
        MutableObjectList mutableObjectList = this.b;
        mutableObjectList.g(function2);
        mutableObjectList.g(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void i(int i, Object obj) {
        MutableIntList mutableIntList = this.a;
        mutableIntList.b(6);
        mutableIntList.b(i);
        this.b.g(obj);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0017. Please report as an issue. */
    public final void k(UiApplier uiApplier, RememberEventDispatcher rememberEventDispatcher) {
        Exception exc;
        MutableIntList mutableIntList = this.a;
        int i = mutableIntList.b;
        MutableObjectList mutableObjectList = new MutableObjectList();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            MutableObjectList mutableObjectList2 = this.b;
            if (i2 < i) {
                int i4 = i2 + 1;
                try {
                    try {
                        switch (mutableIntList.a(i2)) {
                            case 0:
                                uiApplier.g();
                                i2 = i4;
                            case 1:
                                int i5 = i3 + 1;
                                uiApplier.c(mutableObjectList2.b(i3));
                                i3 = i5;
                                i2 = i4;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                int i6 = i2 + 2;
                                i2 += 3;
                                uiApplier.f(mutableIntList.a(i4), mutableIntList.a(i6));
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                int i7 = i2 + 2;
                                try {
                                    int i8 = i2 + 3;
                                    try {
                                        i2 += 4;
                                        uiApplier.e(mutableIntList.a(i4), mutableIntList.a(i7), mutableIntList.a(i8));
                                    } catch (Exception e) {
                                        exc = e;
                                        i2 = i8;
                                        break;
                                    }
                                } catch (Exception e2) {
                                    exc = e2;
                                    i2 = i7;
                                    break;
                                }
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                uiApplier.k();
                                i2 = i4;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                i2 += 2;
                                int i9 = i3 + 1;
                                uiApplier.b(mutableIntList.a(i4), mutableObjectList2.b(i3));
                                i3 = i9;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                i2 += 2;
                                try {
                                    mutableIntList.a(i4);
                                    int i10 = i3 + 1;
                                    i3 = i10;
                                } catch (Exception e3) {
                                    exc = e3;
                                    break;
                                }
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                int i11 = i3 + 1;
                                Object b = mutableObjectList2.b(i3);
                                b.getClass();
                                TypeIntrinsics.c(2, b);
                                i3 += 2;
                                uiApplier.h(mutableObjectList2.b(i11), (Function2) b);
                                i2 = i4;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                Object obj = uiApplier.c;
                                if (obj instanceof ComposeNodeLifecycleCallback) {
                                    ComposeNodeLifecycleCallback composeNodeLifecycleCallback = (ComposeNodeLifecycleCallback) obj;
                                    if (rememberEventDispatcher.f.j(composeNodeLifecycleCallback)) {
                                        composeNodeLifecycleCallback.b();
                                    }
                                }
                                mutableObjectList.g(obj);
                                uiApplier.d();
                                i2 = i4;
                            default:
                                i2 = i4;
                        }
                    } catch (Throwable th) {
                        uiApplier.j();
                        throw th;
                    }
                } catch (Exception e4) {
                    exc = e4;
                    i2 = i4;
                }
            } else {
                if (i3 != mutableObjectList2.b) {
                    ComposerKt.a("Applier operation size mismatch");
                }
                mutableObjectList2.k();
                mutableIntList.b = 0;
                uiApplier.j();
                return;
            }
            exc = e3;
            throw new ComposePausableCompositionException(mutableObjectList2, mutableObjectList, mutableIntList, i2 - 1, exc);
        }
    }
}
