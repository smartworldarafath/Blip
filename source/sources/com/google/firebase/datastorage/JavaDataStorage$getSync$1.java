package com.google.firebase.datastorage;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import defpackage.u2;
import java.util.Arrays;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$getSync$1", f = "JavaDataStorage.kt", l = {104}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class JavaDataStorage$getSync$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public int n;
    public final /* synthetic */ JavaDataStorage o;
    public final /* synthetic */ Preferences.Key p;
    public final /* synthetic */ Object q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$getSync$1(JavaDataStorage javaDataStorage, Preferences.Key key, Object obj, Continuation continuation) {
        super(2, continuation);
        this.o = javaDataStorage;
        this.p = key;
        this.q = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((JavaDataStorage$getSync$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new JavaDataStorage$getSync$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            Flow g = this.o.c.g();
            this.n = 1;
            obj = FlowKt.o(g, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        Preferences preferences = (Preferences) obj;
        if (preferences != null) {
            Preferences.Key key = this.p;
            key.getClass();
            Object obj2 = ((MutablePreferences) preferences).a.get(key);
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                obj2 = Arrays.copyOf(bArr, bArr.length);
            }
            if (obj2 != null) {
                return obj2;
            }
        }
        return this.q;
    }
}
