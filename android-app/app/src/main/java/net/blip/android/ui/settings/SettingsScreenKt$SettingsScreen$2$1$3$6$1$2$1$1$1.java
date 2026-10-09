package net.blip.android.ui.settings;

import android.content.Context;
import android.net.Uri;
import android.widget.Toast;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.documentfile.provider.DocumentFile;
import defpackage.u2;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.event.TransferSetCustomDefaultSavePath;
import net.blip.shared.ContentPicker$ContentType;
import net.blip.shared.ContentPicker$Options;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.settings.SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1", f = "SettingsScreen.kt", l = {178}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Function2 p;
    public final /* synthetic */ String q;
    public final /* synthetic */ Context r;
    public final /* synthetic */ Function1 s;
    public final /* synthetic */ MutableIntState t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1(Function2 function2, String str, Context context, Function1 function1, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.p = function2;
        this.q = str;
        this.r = context;
        this.s = function1;
        this.t = mutableIntState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1 settingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1 = new SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1(this.p, this.q, this.r, this.s, this.t, continuation);
        settingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1.o = obj;
        return settingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Object failure;
        DocumentFile c;
        Context context = this.r;
        CoroutineScope coroutineScope = (CoroutineScope) this.o;
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
            ContentPicker$Options contentPicker$Options = new ContentPicker$Options(ContentPicker$ContentType.Directory.a, this.q, 5);
            this.o = coroutineScope;
            this.n = 1;
            obj = this.p.n(contentPicker$Options, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        String str = (String) CollectionsKt.t((List) obj);
        Unit unit = Unit.a;
        if (str != null) {
            Uri parse = Uri.parse(str);
            try {
                context.getContentResolver().takePersistableUriPermission(parse, 3);
                c = DocumentFile.c(context, parse);
            } catch (Throwable th) {
                failure = new Result.Failure(th);
            }
            if (c.e() && c.a()) {
                failure = unit;
                if (!(failure instanceof Result.Failure)) {
                    SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) this.t;
                    snapshotMutableIntStateImpl.k(snapshotMutableIntStateImpl.j() + 1);
                    this.s.b(new TransferSetCustomDefaultSavePath(str));
                }
                Throwable a = Result.a(failure);
                if (a != null) {
                    Logger logger = LoggerKt.a;
                    Pair[] pairArr = {new Pair("err", a)};
                    logger.getClass();
                    Logger.e("persisting receive folder access", pairArr);
                    Toast.makeText(context, "Blip couldn't write to that folder", 0).show();
                }
            } else {
                throw new IllegalStateException("The selected folder is not writable");
            }
        }
        return unit;
    }
}
