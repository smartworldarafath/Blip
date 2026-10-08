package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RememberSaveableKt {
    public static final String a(Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    public static final Object b(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i) {
        Object[] objArr2;
        Saver saver2;
        boolean z;
        final Object obj;
        Object obj2;
        Object d;
        GapComposer gapComposer = (GapComposer) composer;
        long j = gapComposer.T;
        CharsKt.b(36);
        final String l = Long.toString(j, 36);
        l.getClass();
        saver.getClass();
        final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.j(SaveableStateRegistryKt.a);
        Object K = gapComposer.K();
        Object obj3 = null;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            if (saveableStateRegistry != null && (d = saveableStateRegistry.d(l)) != null) {
                obj2 = saver.a(d);
            } else {
                obj2 = null;
            }
            if (obj2 == null) {
                obj2 = function0.a();
            }
            objArr2 = objArr;
            saver2 = saver;
            SaveableHolder saveableHolder = new SaveableHolder(saver2, saveableStateRegistry, l, obj2, objArr2);
            gapComposer.g0(saveableHolder);
            K = saveableHolder;
        } else {
            objArr2 = objArr;
            saver2 = saver;
        }
        final SaveableHolder saveableHolder2 = (SaveableHolder) K;
        if (Arrays.equals(objArr2, saveableHolder2.n)) {
            obj3 = saveableHolder2.m;
        }
        if (obj3 == null) {
            obj3 = function0.a();
        }
        boolean h = gapComposer.h(saveableHolder2);
        if ((((i & 112) ^ 48) > 32 && gapComposer.h(saver2)) || (i & 48) == 32) {
            z = true;
        } else {
            z = false;
        }
        boolean h2 = h | z | gapComposer.h(saveableStateRegistry) | gapComposer.f(l) | gapComposer.h(obj3) | gapComposer.h(objArr2);
        Object K2 = gapComposer.K();
        if (!h2 && K2 != composer$Companion$Empty$1) {
            obj = obj3;
        } else {
            final Object[] objArr3 = objArr2;
            obj = obj3;
            final Saver saver3 = saver2;
            Function0 function02 = new Function0() { // from class: androidx.compose.runtime.saveable.b
                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    boolean z2;
                    SaveableHolder saveableHolder3 = SaveableHolder.this;
                    SaveableStateRegistry saveableStateRegistry2 = saveableHolder3.k;
                    SaveableStateRegistry saveableStateRegistry3 = saveableStateRegistry;
                    boolean z3 = true;
                    if (saveableStateRegistry2 != saveableStateRegistry3) {
                        saveableHolder3.k = saveableStateRegistry3;
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    String str = saveableHolder3.l;
                    String str2 = l;
                    if (!Intrinsics.a(str, str2)) {
                        saveableHolder3.l = str2;
                    } else {
                        z3 = z2;
                    }
                    saveableHolder3.j = saver3;
                    saveableHolder3.m = obj;
                    saveableHolder3.n = objArr3;
                    SaveableStateRegistry.Entry entry = saveableHolder3.o;
                    if (entry != null && z3) {
                        ((SaveableStateRegistryImpl$registerProvider$3) entry).a();
                        saveableHolder3.o = null;
                        saveableHolder3.d();
                    }
                    return Unit.a;
                }
            };
            gapComposer.g0(function02);
            K2 = function02;
        }
        EffectsKt.g((Function0) K2, gapComposer);
        return obj;
    }

    public static final Object c(Object[] objArr, Function0 function0, Composer composer) {
        return b(Arrays.copyOf(objArr, objArr.length), SaverKt.a, function0, composer, 3456);
    }

    public static final Object d(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i) {
        return b(Arrays.copyOf(objArr, objArr.length), saver, function0, composer, ((i << 3) & 7168) | 384);
    }
}
