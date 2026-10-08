package com.google.firebase.datastorage;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import androidx.datastore.preferences.core.Preferences;
import defpackage.y9;
import java.util.Map;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JavaDataStorage {
    public static final /* synthetic */ KProperty[] d;
    public final String a;
    public final ThreadLocal b;
    public final DataStore c;

    static {
        PropertyReference2Impl propertyReference2Impl = new PropertyReference2Impl();
        Reflection.a.getClass();
        d = new KProperty[]{propertyReference2Impl};
    }

    public JavaDataStorage(Context context, String str) {
        context.getClass();
        this.a = str;
        this.b = new ThreadLocal();
        ReplaceFileCorruptionHandler replaceFileCorruptionHandler = new ReplaceFileCorruptionHandler(new y9(this, 0));
        y9 y9Var = new y9(this, 1);
        DefaultScheduler defaultScheduler = Dispatchers.a;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.l;
        CompletableJob b = SupervisorKt.b();
        defaultIoScheduler.getClass();
        this.c = (DataStore) new PreferenceDataStoreSingletonDelegate(str, replaceFileCorruptionHandler, y9Var, CoroutineScopeKt.a(CoroutineContext.Element.DefaultImpls.c(defaultIoScheduler, b))).a(context, d[0]);
    }

    public final void a(Function1 function1) {
    }

    public final Map b() {
        return (Map) BuildersKt.d(EmptyCoroutineContext.j, new JavaDataStorage$getAllSync$1(this, null));
    }

    public final Object c(Preferences.Key key, Long l) {
        key.getClass();
        return BuildersKt.d(EmptyCoroutineContext.j, new JavaDataStorage$getSync$1(this, key, l, null));
    }

    public final void d(Preferences.Key key, Long l) {
        key.getClass();
    }
}
