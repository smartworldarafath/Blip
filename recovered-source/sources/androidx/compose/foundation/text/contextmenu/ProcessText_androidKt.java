package androidx.compose.foundation.text.contextmenu;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.ProcessTextKey;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProcessText_androidKt {
    public static final void a(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, final boolean z, final String str, final long j) {
        if (!TextRange.c(j) && str.length() != 0) {
            PackageManager packageManager = context.getPackageManager();
            final Context context2 = context;
            List list = (List) ProcessTextApi23Impl.a.b(context2);
            if (!list.isEmpty()) {
                MutableObjectList mutableObjectList = textContextMenuBuilderScope.a;
                MutableObjectList mutableObjectList2 = textContextMenuBuilderScope.a;
                TextContextMenuSeparator textContextMenuSeparator = TextContextMenuSeparator.b;
                mutableObjectList.g(textContextMenuSeparator);
                int size = list.size();
                int i = 0;
                while (i < size) {
                    final ResolveInfo resolveInfo = (ResolveInfo) list.get(i);
                    mutableObjectList2.g(new TextContextMenuItem(new ProcessTextKey(i), resolveInfo.loadLabel(packageManager).toString(), 0, new Function1() { // from class: wd
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj) {
                            long j2 = j;
                            String obj2 = str.subSequence(TextRange.f(j2), TextRange.e(j2)).toString();
                            Intent putExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain").putExtra("android.intent.extra.PROCESS_TEXT_READONLY", z);
                            ActivityInfo activityInfo = resolveInfo.activityInfo;
                            Intent className = putExtra.setClassName(activityInfo.packageName, activityInfo.name);
                            className.putExtra("android.intent.extra.PROCESS_TEXT", obj2);
                            context2.startActivity(className);
                            ((TextContextMenuSession) obj).close();
                            return Unit.a;
                        }
                    }));
                    i++;
                    context2 = context;
                }
                mutableObjectList2.g(textContextMenuSeparator);
            }
        }
    }
}
