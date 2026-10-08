package net.blip.android.ui.util;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavHostController;
import defpackage.k8;
import defpackage.lh;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.navigation.NavigationResultKt;
import net.blip.shared.ContentPicker$ContentType;
import net.blip.shared.ContentPicker$Options;
import net.blip.shared.ScratchFileWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1", f = "UmbrellaContentPicker.kt", l = {92, 99, 105, 108, 112, 119}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1 extends SuspendLambda implements Function2<UmbrellaContentPickerType, Continuation<? super List<? extends String>>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Function2 p;
    public final /* synthetic */ Function2 q;
    public final /* synthetic */ NavHostController r;
    public final /* synthetic */ Context s;
    public final /* synthetic */ ScratchFileWriter t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1(Function2 function2, Function2 function22, NavHostController navHostController, Context context, ScratchFileWriter scratchFileWriter, Continuation continuation) {
        super(2, continuation);
        this.p = function2;
        this.q = function22;
        this.r = navHostController;
        this.s = context;
        this.t = scratchFileWriter;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1) s((UmbrellaContentPickerType) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1 umbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1 = new UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1(this.p, this.q, this.r, this.s, this.t, continuation);
        umbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1.o = obj;
        return umbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x009a, code lost:
    
        if (r9 == r1) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d5, code lost:
    
        if (r9 == r1) goto L76;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Object failure;
        Throwable a;
        EmptyList emptyList;
        UmbrellaContentPickerType umbrellaContentPickerType = (UmbrellaContentPickerType) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Context context = this.s;
        Object obj2 = EmptyList.j;
        String str = null;
        try {
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        switch (i) {
            case 0:
                ResultKt.b(obj);
                int ordinal = umbrellaContentPickerType.ordinal();
                Function2 function2 = this.p;
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        int i2 = 3;
                        if (ordinal != 2) {
                            if (ordinal != 3) {
                                if (ordinal != 4) {
                                    if (ordinal == 5) {
                                        ScratchFileWriter scratchFileWriter = this.t;
                                        this.o = null;
                                        this.n = 6;
                                        obj = UmbrellaContentPickerKt.a(context, scratchFileWriter, this);
                                        if (obj == coroutineSingletons) {
                                        }
                                        failure = (List) obj;
                                        a = Result.a(failure);
                                        if (a != null) {
                                            obj2 = failure;
                                        } else {
                                            Log.w("ClipboardContent", "Could not read clipboard", a);
                                        }
                                        emptyList = (List) obj2;
                                        if (emptyList.isEmpty()) {
                                            Toast.makeText(context, "Nothing to send from clipboard", 0).show();
                                        }
                                        return emptyList;
                                    }
                                    k8.e();
                                    return null;
                                }
                                NavHostController navHostController = this.r;
                                lh lhVar = new lh(i2, navHostController);
                                this.o = null;
                                this.n = 5;
                                obj = NavigationResultKt.a(navHostController, lhVar, this);
                                break;
                            } else {
                                CameraLauncherOptions cameraLauncherOptions = new CameraLauncherOptions();
                                this.o = null;
                                this.n = 4;
                                obj = this.q.n(cameraLauncherOptions, this);
                                break;
                            }
                        } else {
                            ContentPicker$Options contentPicker$Options = new ContentPicker$Options(ContentPicker$ContentType.Directory.a, null, 13);
                            this.o = null;
                            this.n = 3;
                            Object n = function2.n(contentPicker$Options, this);
                            if (n != coroutineSingletons) {
                                return n;
                            }
                        }
                    } else {
                        ContentPicker$Options contentPicker$Options2 = new ContentPicker$Options(new ContentPicker$ContentType.File(), null, 9);
                        this.o = null;
                        this.n = 2;
                        Object n2 = function2.n(contentPicker$Options2, this);
                        if (n2 != coroutineSingletons) {
                            return n2;
                        }
                    }
                } else {
                    ContentPicker$Options contentPicker$Options3 = new ContentPicker$Options(ContentPicker$ContentType.ImageAndVideo.a, null, 9);
                    this.o = null;
                    this.n = 1;
                    Object n3 = function2.n(contentPicker$Options3, this);
                    if (n3 != coroutineSingletons) {
                        return n3;
                    }
                }
                return coroutineSingletons;
            case 1:
                ResultKt.b(obj);
                return obj;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ResultKt.b(obj);
                return obj;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ResultKt.b(obj);
                return obj;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ResultKt.b(obj);
                Uri uri = (Uri) obj;
                if (uri != null) {
                    str = uri.toString();
                }
                if (str != null) {
                    return CollectionsKt.B(str);
                }
                return obj2;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ResultKt.b(obj);
                List list = (List) obj;
                if (list != null) {
                    ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((Uri) it.next()).toString());
                    }
                    return arrayList;
                }
                return obj2;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ResultKt.b(obj);
                failure = (List) obj;
                a = Result.a(failure);
                if (a != null) {
                }
                emptyList = (List) obj2;
                if (emptyList.isEmpty()) {
                }
                return emptyList;
            default:
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
