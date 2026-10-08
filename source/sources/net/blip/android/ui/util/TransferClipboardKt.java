package net.blip.android.ui.util;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import androidx.core.net.UriKt;
import androidx.documentfile.provider.DocumentFile;
import defpackage.u2;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import net.blip.android.R;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.InternetShortcut;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferClipboardKt {
    public static final boolean a(Context context, List list) {
        Object failure;
        context.getClass();
        list.getClass();
        if (list.isEmpty()) {
            return false;
        }
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                try {
                    failure = d(context, (String) it.next(), false);
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                if (failure instanceof Result.Failure) {
                    failure = null;
                }
                if (failure == null) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f A[Catch: all -> 0x0142, TryCatch #0 {all -> 0x0142, blocks: (B:11:0x0026, B:12:0x003e, B:13:0x0049, B:15:0x004f, B:18:0x005b, B:23:0x005f, B:25:0x0069, B:27:0x006f, B:28:0x007e, B:30:0x0084, B:32:0x00a0, B:33:0x00a9, B:35:0x00af, B:37:0x00bb, B:40:0x00df, B:41:0x0108, B:43:0x010e, B:45:0x011a, B:48:0x00c2, B:49:0x00c6, B:51:0x00cc, B:54:0x00da, B:57:0x0132, B:58:0x0139, B:59:0x013a, B:60:0x0141, B:64:0x0033), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069 A[Catch: all -> 0x0142, TryCatch #0 {all -> 0x0142, blocks: (B:11:0x0026, B:12:0x003e, B:13:0x0049, B:15:0x004f, B:18:0x005b, B:23:0x005f, B:25:0x0069, B:27:0x006f, B:28:0x007e, B:30:0x0084, B:32:0x00a0, B:33:0x00a9, B:35:0x00af, B:37:0x00bb, B:40:0x00df, B:41:0x0108, B:43:0x010e, B:45:0x011a, B:48:0x00c2, B:49:0x00c6, B:51:0x00cc, B:54:0x00da, B:57:0x0132, B:58:0x0139, B:59:0x013a, B:60:0x0141, B:64:0x0033), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013a A[Catch: all -> 0x0142, TryCatch #0 {all -> 0x0142, blocks: (B:11:0x0026, B:12:0x003e, B:13:0x0049, B:15:0x004f, B:18:0x005b, B:23:0x005f, B:25:0x0069, B:27:0x006f, B:28:0x007e, B:30:0x0084, B:32:0x00a0, B:33:0x00a9, B:35:0x00af, B:37:0x00bb, B:40:0x00df, B:41:0x0108, B:43:0x010e, B:45:0x011a, B:48:0x00c2, B:49:0x00c6, B:51:0x00cc, B:54:0x00da, B:57:0x0132, B:58:0x0139, B:59:0x013a, B:60:0x0141, B:64:0x0033), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Serializable b(Context context, Transfer transfer, String str, ContinuationImpl continuationImpl) {
        TransferClipboardKt$copyTransferToClipboard$1 transferClipboardKt$copyTransferToClipboard$1;
        int i;
        List list;
        ArrayList arrayList;
        Iterator it;
        try {
            if (continuationImpl instanceof TransferClipboardKt$copyTransferToClipboard$1) {
                TransferClipboardKt$copyTransferToClipboard$1 transferClipboardKt$copyTransferToClipboard$12 = (TransferClipboardKt$copyTransferToClipboard$1) continuationImpl;
                int i2 = transferClipboardKt$copyTransferToClipboard$12.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    transferClipboardKt$copyTransferToClipboard$12.o = i2 - Integer.MIN_VALUE;
                    transferClipboardKt$copyTransferToClipboard$1 = transferClipboardKt$copyTransferToClipboard$12;
                    Object obj = transferClipboardKt$copyTransferToClipboard$1.n;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = transferClipboardKt$copyTransferToClipboard$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            context = transferClipboardKt$copyTransferToClipboard$1.m;
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        transferClipboardKt$copyTransferToClipboard$1.m = context;
                        transferClipboardKt$copyTransferToClipboard$1.o = 1;
                        obj = Transfer_DerivedKt.e(transfer, str, transferClipboardKt$copyTransferToClipboard$1);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    list = (List) obj;
                    arrayList = new ArrayList();
                    it = list.iterator();
                    while (it.hasNext()) {
                        TransferClipboardLocation d = d(context, (String) it.next(), true);
                        if (d != null) {
                            arrayList.add(d);
                        }
                    }
                    if (arrayList.size() != list.size()) {
                        if (!arrayList.isEmpty()) {
                            ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                TransferClipboardLocation transferClipboardLocation = (TransferClipboardLocation) it2.next();
                                arrayList2.add(new TransferClipboardItem(new ClipData.Item(c(context, transferClipboardLocation), null, null, transferClipboardLocation.a), transferClipboardLocation.b));
                            }
                            SetBuilder setBuilder = new SetBuilder();
                            Iterator it3 = arrayList2.iterator();
                            while (it3.hasNext()) {
                                setBuilder.add(((TransferClipboardItem) it3.next()).b);
                            }
                            if (!arrayList2.isEmpty()) {
                                Iterator it4 = arrayList2.iterator();
                                while (true) {
                                    if (!it4.hasNext()) {
                                        break;
                                    }
                                    if (((TransferClipboardItem) it4.next()).a.getText() != null) {
                                        setBuilder.add("text/plain");
                                        break;
                                    }
                                }
                            }
                            ClipData clipData = new ClipData(new ClipDescription("Received with Blip", (String[]) SetsKt.a(setBuilder).toArray(new String[0])), ((TransferClipboardItem) CollectionsKt.s(arrayList2)).a);
                            Iterator it5 = CollectionsKt.p(arrayList2).iterator();
                            while (it5.hasNext()) {
                                clipData.addItem(((TransferClipboardItem) it5.next()).a);
                            }
                            Object systemService = context.getSystemService("clipboard");
                            systemService.getClass();
                            ((ClipboardManager) systemService).setPrimaryClip(clipData);
                            return new Integer(arrayList2.size());
                        }
                        throw new IllegalArgumentException("Transfer has no items");
                    }
                    throw new IllegalArgumentException("Transfer contains unsupported locations");
                }
            }
            if (i == 0) {
            }
            list = (List) obj;
            arrayList = new ArrayList();
            it = list.iterator();
            while (it.hasNext()) {
            }
            if (arrayList.size() != list.size()) {
            }
        } catch (Throwable th) {
            return new Result.Failure(th);
        }
        transferClipboardKt$copyTransferToClipboard$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = transferClipboardKt$copyTransferToClipboard$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = transferClipboardKt$copyTransferToClipboard$1.o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x009f, code lost:
    
        r14 = r14.toString(kotlin.text.Charsets.a.name());
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a9, code lost:
    
        r13.close();
        r13 = r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String c(Context context, TransferClipboardLocation transferClipboardLocation) {
        String str;
        String str2;
        Object failure;
        String str3 = transferClipboardLocation.c;
        Object obj = null;
        if (str3 != null) {
            str = StringsKt.M(str3, '.', "").toLowerCase(Locale.ROOT);
            str.getClass();
        } else {
            str = null;
        }
        if (!Intrinsics.a(str, "txt") && !Intrinsics.a(str, "url")) {
            return null;
        }
        File file = transferClipboardLocation.d;
        if (file != null) {
            if (file.length() > 1000000) {
                return null;
            }
            Charset charset = Charsets.a;
            charset.getClass();
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
            try {
                StringWriter stringWriter = new StringWriter();
                char[] cArr = new char[8192];
                for (int read = inputStreamReader.read(cArr); read >= 0; read = inputStreamReader.read(cArr)) {
                    stringWriter.write(cArr, 0, read);
                }
                str2 = stringWriter.toString();
                str2.getClass();
                inputStreamReader.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(inputStreamReader, th);
                    throw th2;
                }
            }
        } else {
            InputStream openInputStream = context.getContentResolver().openInputStream(transferClipboardLocation.a);
            if (openInputStream != null) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[8192];
                    long j = 0;
                    while (true) {
                        int read2 = openInputStream.read(bArr);
                        if (read2 < 0) {
                            break;
                        }
                        j += read2;
                        if (j > 1000000) {
                            openInputStream.close();
                            return null;
                        }
                        byteArrayOutputStream.write(bArr, 0, read2);
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        CloseableKt.a(openInputStream, th);
                    }
                }
            } else {
                str2 = null;
            }
            if (str2 == null) {
                return null;
            }
        }
        if (Intrinsics.a(str, "txt")) {
            return str2;
        }
        if (!Intrinsics.a(str, "url")) {
            return null;
        }
        try {
            failure = InternetShortcut.Companion.a(str2).c;
        } catch (Throwable th4) {
            failure = new Result.Failure(th4);
        }
        if (!(failure instanceof Result.Failure)) {
            obj = failure;
        }
        return (String) obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
    
        if (r1.equals("file") == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final TransferClipboardLocation d(Context context, String str, boolean z) {
        File a;
        String type;
        String str2;
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (scheme != null) {
            int hashCode = scheme.hashCode();
            if (hashCode != 3143036) {
                if (hashCode == 951530617 && scheme.equals("content") && (type = context.getContentResolver().getType(parse)) != null && !type.equals("vnd.android.document/directory")) {
                    if (z) {
                        str2 = DocumentFile.b(context, parse).d();
                    } else {
                        str2 = null;
                    }
                    return new TransferClipboardLocation(parse, type, str2, null);
                }
            }
            return null;
        }
        if (parse.getScheme() == null) {
            a = new File(str);
        } else {
            a = UriKt.a(parse);
        }
        if (a.isFile()) {
            Uri d = FileProvider.d(context, context.getString(R.string.fileProviderAuthority), a);
            d.getClass();
            String type2 = context.getContentResolver().getType(d);
            if (type2 == null) {
                type2 = "application/octet-stream";
            }
            return new TransferClipboardLocation(d, type2, a.getName(), a);
        }
        return null;
    }
}
