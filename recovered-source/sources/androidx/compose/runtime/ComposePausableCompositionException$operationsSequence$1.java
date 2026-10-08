package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.ObjectList;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequenceScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.runtime.ComposePausableCompositionException$operationsSequence$1", f = "PausableComposition.kt", l = {583}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class ComposePausableCompositionException$operationsSequence$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super String>, Continuation<? super Unit>, Object> {
    public int l;
    public int m;
    public int n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ ComposePausableCompositionException q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposePausableCompositionException$operationsSequence$1(ComposePausableCompositionException composePausableCompositionException, Continuation continuation) {
        super(2, continuation);
        this.q = composePausableCompositionException;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ComposePausableCompositionException$operationsSequence$1) s((SequenceScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ComposePausableCompositionException$operationsSequence$1 composePausableCompositionException$operationsSequence$1 = new ComposePausableCompositionException$operationsSequence$1(this.q, continuation);
        composePausableCompositionException$operationsSequence$1.p = obj;
        return composePausableCompositionException$operationsSequence$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        SequenceScope sequenceScope;
        int i;
        int i2;
        int i3;
        String str;
        int i4;
        int i5;
        String str2;
        ComposePausableCompositionException composePausableCompositionException = this.q;
        ObjectList objectList = composePausableCompositionException.j;
        IntList intList = composePausableCompositionException.l;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i6 = this.o;
        if (i6 != 0) {
            if (i6 == 1) {
                i = this.n;
                i2 = this.m;
                i3 = this.l;
                sequenceScope = (SequenceScope) this.p;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            sequenceScope = (SequenceScope) this.p;
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        if (i3 < Math.min(composePausableCompositionException.m + 10, intList.b)) {
            int i7 = i3 + 1;
            int a = intList.a(i3);
            switch (a) {
                case 0:
                    str = "up";
                    break;
                case 1:
                    Object b = objectList.b(i2);
                    i2++;
                    str = "down " + b;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    str = q.f(intList.a(i7), intList.a(i3 + 2), "remove ", " ");
                    i7 = i3 + 3;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    int a2 = intList.a(i7);
                    int a3 = intList.a(i3 + 2);
                    int a4 = intList.a(i3 + 3);
                    StringBuilder k = jb.k("move ", a2, " ", a3, " ");
                    k.append(a4);
                    str = k.toString();
                    i7 = i3 + 4;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    str = "clear";
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    i4 = i3 + 2;
                    int a5 = intList.a(i7);
                    i5 = i2 + 1;
                    str2 = "insertBottomUp " + a5 + " " + objectList.b(i2);
                    int i8 = i4;
                    str = str2;
                    i7 = i8;
                    i2 = i5;
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    i4 = i3 + 2;
                    int a6 = intList.a(i7);
                    i5 = i2 + 1;
                    str2 = "insertTopDown " + a6 + " " + objectList.b(i2);
                    int i82 = i4;
                    str = str2;
                    i7 = i82;
                    i2 = i5;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    Object b2 = objectList.b(i2);
                    b2.getClass();
                    TypeIntrinsics.c(2, b2);
                    i2 += 2;
                    str = "apply " + ((Function2) b2);
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    str = "reuse " + composePausableCompositionException.k.b(i);
                    i++;
                    break;
                case KeyModifiers.a /* 9 */:
                    str = "recompose pending";
                    break;
                default:
                    str = q.g(a, "unknown op: ");
                    break;
            }
            this.p = sequenceScope;
            this.l = i7;
            this.m = i2;
            this.n = i;
            this.o = 1;
            sequenceScope.a(i3 + ": " + str, this);
            return coroutineSingletons;
        }
        return Unit.a;
    }
}
