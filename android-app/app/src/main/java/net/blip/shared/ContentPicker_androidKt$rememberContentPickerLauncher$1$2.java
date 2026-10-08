package net.blip.shared;

import androidx.activity.ComponentActivity;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.shared.ContentPicker_androidKt$rememberContentPickerLauncher$1$2", f = "ContentPicker.android.kt", l = {32}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ContentPicker_androidKt$rememberContentPickerLauncher$1$2 extends SuspendLambda implements Function2<ContentPicker$Options, Continuation<? super List<? extends String>>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ ComponentActivity p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentPicker_androidKt$rememberContentPickerLauncher$1$2(ComponentActivity componentActivity, Continuation continuation) {
        super(2, continuation);
        this.p = componentActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ContentPicker_androidKt$rememberContentPickerLauncher$1$2) s((ContentPicker$Options) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ContentPicker_androidKt$rememberContentPickerLauncher$1$2 contentPicker_androidKt$rememberContentPickerLauncher$1$2 = new ContentPicker_androidKt$rememberContentPickerLauncher$1$2(this.p, continuation);
        contentPicker_androidKt$rememberContentPickerLauncher$1$2.o = obj;
        return contentPicker_androidKt$rememberContentPickerLauncher$1$2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.util.List] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        String str;
        ContentPicker$Options contentPicker$Options = (ContentPicker$Options) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        EmptyList<String> emptyList = EmptyList.j;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            if (this.p == null) {
                Logger logger = LoggerKt.a;
                Pair[] pairArr = {new Pair("reason", "missing_activity"), new Pair("content_type", ContentPicker_androidKt.a(contentPicker$Options.b))};
                logger.getClass();
                Logger.e("content picker unavailable", pairArr);
                return emptyList;
            }
            this.o = contentPicker$Options;
            this.n = 1;
            obj = ContentPickerKt.a(contentPicker$Options, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        ?? r11 = (List) obj;
        if (r11 != 0) {
            emptyList = r11;
        }
        Logger logger2 = LoggerKt.a;
        Pair pair = new Pair("content_type", ContentPicker_androidKt.a(contentPicker$Options.b));
        Pair pair2 = new Pair("multiple", Boolean.valueOf(contentPicker$Options.c));
        Pair pair3 = new Pair("result_count", new Integer(emptyList.size()));
        ArrayList arrayList = new ArrayList(CollectionsKt.m(emptyList, 10));
        for (String str2 : emptyList) {
            if (kotlin.text.StringsKt.J(str2, "content://", true)) {
                str = "content_uri";
            } else if (kotlin.text.StringsKt.J(str2, "file://", true)) {
                str = "file_uri";
            } else {
                str = "path";
            }
            arrayList.add(str);
        }
        Pair[] pairArr2 = {pair, pair2, pair3, new Pair("location_types", CollectionsKt.y(CollectionsKt.Q(CollectionsKt.X(CollectionsKt.Z(arrayList))), ",", null, null, null, 62))};
        logger2.getClass();
        Logger.h("content picker completed", pairArr2);
        return emptyList;
    }
}
