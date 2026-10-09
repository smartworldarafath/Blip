package com.google.firebase.datastorage;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1", f = "JavaDataStorage.kt", l = {145}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class JavaDataStorage$putSync$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Preferences>, Object> {
    public int n;
    public final /* synthetic */ JavaDataStorage o;
    public final /* synthetic */ Preferences.Key p;
    public final /* synthetic */ Long q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        public /* synthetic */ Object n;
        public final /* synthetic */ Preferences.Key o;
        public final /* synthetic */ Long p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Preferences.Key key, Long l, Continuation continuation) {
            super(2, continuation);
            this.o = key;
            this.p = l;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) s((MutablePreferences) obj, (Continuation) obj2);
            Unit unit = Unit.a;
            anonymousClass1.v(unit);
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.o, this.p, continuation);
            anonymousClass1.n = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            ((MutablePreferences) this.n).c(this.o, this.p);
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$putSync$1(JavaDataStorage javaDataStorage, Preferences.Key key, Long l, Continuation continuation) {
        super(2, continuation);
        this.o = javaDataStorage;
        this.p = key;
        this.q = l;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((JavaDataStorage$putSync$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new JavaDataStorage$putSync$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        DataStore dataStore = this.o.c;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, this.q, null);
        this.n = 1;
        Object a = PreferencesKt.a(dataStore, anonymousClass1, this);
        if (a == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a;
    }
}
