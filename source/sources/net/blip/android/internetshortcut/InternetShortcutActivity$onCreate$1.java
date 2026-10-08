package net.blip.android.internetshortcut;

import android.content.Intent;
import android.net.Uri;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.libblip.Logger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.internetshortcut.InternetShortcutActivity$onCreate$1", f = "InternetShortcutActivity.kt", l = {20}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class InternetShortcutActivity$onCreate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ InternetShortcutActivity o;
    public final /* synthetic */ Uri p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternetShortcutActivity$onCreate$1(InternetShortcutActivity internetShortcutActivity, Uri uri, Continuation continuation) {
        super(2, continuation);
        this.o = internetShortcutActivity;
        this.p = uri;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((InternetShortcutActivity$onCreate$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new InternetShortcutActivity$onCreate$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Uri uri = this.p;
        InternetShortcutActivity internetShortcutActivity = this.o;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            this.n = 1;
            obj = InternetShortcutKt.a(internetShortcutActivity, uri, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        Uri uri2 = (Uri) obj;
        if (uri2 == null) {
            Logger logger = internetShortcutActivity.E;
            Pair[] pairArr = {new Pair("uri", uri)};
            logger.getClass();
            Logger.e("unable to decode internet shortcut", pairArr);
        } else {
            internetShortcutActivity.startActivity(new Intent("android.intent.action.VIEW", uri2));
        }
        internetShortcutActivity.finish();
        return Unit.a;
    }
}
