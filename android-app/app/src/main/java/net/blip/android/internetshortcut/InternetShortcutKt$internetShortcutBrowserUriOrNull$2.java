package net.blip.android.internetshortcut;

import android.content.Context;
import android.net.Uri;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.File;
import java.io.InputStream;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.shared.InternetShortcut;
import okio.Okio;
import okio.Source;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.internetshortcut.InternetShortcutKt$internetShortcutBrowserUriOrNull$2", f = "InternetShortcut.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class InternetShortcutKt$internetShortcutBrowserUriOrNull$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Uri>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ Uri o;
    public final /* synthetic */ Context p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternetShortcutKt$internetShortcutBrowserUriOrNull$2(Uri uri, Context context, Continuation continuation) {
        super(2, continuation);
        this.o = uri;
        this.p = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((InternetShortcutKt$internetShortcutBrowserUriOrNull$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        InternetShortcutKt$internetShortcutBrowserUriOrNull$2 internetShortcutKt$internetShortcutBrowserUriOrNull$2 = new InternetShortcutKt$internetShortcutBrowserUriOrNull$2(this.o, this.p, continuation);
        internetShortcutKt$internetShortcutBrowserUriOrNull$2.n = obj;
        return internetShortcutKt$internetShortcutBrowserUriOrNull$2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v7, types: [okio.Buffer, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Result.Failure failure;
        String str;
        Source source;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        Uri uri = this.o;
        Context context = this.p;
        try {
            uri.getClass();
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment != null) {
                str = StringsKt.M(lastPathSegment, '.', "");
            } else {
                str = null;
            }
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        if (StringsKt.o(str, "url", true)) {
            String scheme = uri.getScheme();
            if (scheme != null) {
                if (scheme.hashCode() == 3143036 && scheme.equals("file")) {
                    String path = uri.getPath();
                    if (path != null) {
                        source = Okio.d(new File(path));
                    } else {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                }
                InputStream openInputStream = context.getContentResolver().openInputStream(uri);
                if (openInputStream != null) {
                    source = Okio.e(openInputStream);
                } else {
                    throw new IllegalStateException("Unable to open internet shortcut");
                }
            } else {
                source = Okio.d(new File(uri.toString()));
            }
            try {
                ?? obj2 = new Object();
                source.J0(8192L, obj2);
                String P = obj2.P();
                source.close();
                Uri parse = Uri.parse(InternetShortcut.Companion.a(P).c);
                boolean o = StringsKt.o(parse.getScheme(), "http", true);
                failure = parse;
                if (!o) {
                    if (!StringsKt.o(parse.getScheme(), "https", true)) {
                        throw new IllegalArgumentException("Internet shortcut is not an HTTP(S) URL");
                    }
                    failure = parse;
                }
                if (failure instanceof Result.Failure) {
                    return null;
                }
                return failure;
            } finally {
            }
        } else {
            throw new IllegalArgumentException("Location is not a .url file");
        }
    }
}
