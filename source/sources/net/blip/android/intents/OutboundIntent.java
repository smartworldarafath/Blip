package net.blip.android.intents;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.StrictMode;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.core.net.UriKt;
import java.io.File;
import kotlin.Pair;
import kotlin.text.StringsKt;
import net.blip.android.R;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OutboundIntent {
    public static Uri a(Context context, File file) {
        try {
            return FileProvider.d(context, context.getString(R.string.fileProviderAuthority), file);
        } catch (IllegalArgumentException e) {
            Logger logger = LoggerKt.a;
            Pair[] pairArr = {new Pair("path", file.getPath())};
            logger.getClass();
            Logger.f(e, pairArr);
            Toast.makeText(context, "Unable to open this file because its name is invalid", 0).show();
            return null;
        }
    }

    public static void b(Context context, Uri uri) {
        context.getClass();
        uri.getClass();
        File a = UriKt.a(uri);
        if (a.isDirectory()) {
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            try {
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
                try {
                    try {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setDataAndType(Uri.fromFile(a), "resource/folder");
                        intent.setFlags(335544320);
                        context.startActivity(intent);
                        return;
                    } catch (Exception unused) {
                        try {
                            Toast.makeText(context, "Install a 3rd party file manager to open folders directly", 0).show();
                            Intent intent2 = new Intent();
                            intent2.setAction("android.intent.action.VIEW_DOWNLOADS");
                            intent2.setFlags(335544320);
                            context.startActivity(intent2);
                            return;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                } catch (Exception unused3) {
                    Intent intent3 = new Intent();
                    intent3.setAction("android.intent.action.VIEW");
                    intent3.setDataAndType(Uri.fromFile(a), "vnd.android.document/directory");
                    intent3.setFlags(335544320);
                    context.startActivity(intent3);
                    return;
                }
            } finally {
                StrictMode.setVmPolicy(vmPolicy);
            }
        }
        Uri a2 = a(context, a);
        if (a2 == null) {
            return;
        }
        Intent intent4 = new Intent();
        intent4.setAction("android.intent.action.VIEW");
        intent4.setData(a2);
        intent4.setFlags(335544321);
        try {
            context.startActivity(intent4);
        } catch (Exception unused4) {
            String name = a.getName();
            name.getClass();
            String M = StringsKt.M(name, '.', "");
            if (M.length() == 0) {
                M = "(no extension)";
            }
            Toast.makeText(context, "No installed apps that can open “." + ((Object) M) + "” files", 0).show();
        }
    }
}
