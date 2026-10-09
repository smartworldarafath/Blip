package androidx.compose.foundation.text.contextmenu.internal;

import android.R;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.internal.TextClassificationHelperApi28;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.f2;
import defpackage.g2;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidTextContextMenuToolbarProvider implements TextContextMenuProvider {
    public final View a;
    public final Function1 b;
    public final Function0 c;
    public final MutatorMutex d = new MutatorMutex();
    public final SnapshotStateObserver e = new SnapshotStateObserver(new f2(this, 0));
    public final f2 f = new f2(this, 1);
    public final f2 g = new f2(this, 2);
    public ActionMode h;
    public b i;
    public Runnable j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TextActionModeCallbackImpl implements TextActionModeCallback {
        public final TextContextMenuSession a;
        public final g2 b;
        public final g2 c;
        public final View d;

        public TextActionModeCallbackImpl(TextContextMenuSession textContextMenuSession, g2 g2Var, g2 g2Var2, View view) {
            this.a = textContextMenuSession;
            this.b = g2Var;
            this.c = g2Var2;
            this.d = view;
        }

        public final boolean a(Menu menu) {
            int i;
            int i2;
            int i3;
            int i4;
            TextContextMenuData textContextMenuData = (TextContextMenuData) this.b.a();
            int i5 = 0;
            if (Intrinsics.a(textContextMenuData, null)) {
                return false;
            }
            menu.clear();
            List list = textContextMenuData.a;
            int size = list.size();
            int i6 = 0;
            int i7 = 1;
            int i8 = 1;
            while (i6 < size) {
                TextContextMenuComponent textContextMenuComponent = (TextContextMenuComponent) list.get(i6);
                int i9 = 2;
                if (textContextMenuComponent instanceof TextContextMenuItem) {
                    i = i7 + 1;
                    Object obj = textContextMenuComponent.a;
                    if (Intrinsics.a(obj, TextContextMenuKeys.a)) {
                        i4 = R.id.cut;
                    } else if (Intrinsics.a(obj, TextContextMenuKeys.b)) {
                        i4 = R.id.copy;
                    } else if (Intrinsics.a(obj, TextContextMenuKeys.c)) {
                        i4 = R.id.paste;
                    } else if (Intrinsics.a(obj, TextContextMenuKeys.d)) {
                        i4 = R.id.selectAll;
                    } else if (Intrinsics.a(obj, TextContextMenuKeys.e)) {
                        i4 = R.id.autofill;
                    } else {
                        i4 = i7;
                    }
                    final TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                    MenuItem add = menu.add(i8, i4, i7, textContextMenuItem.b);
                    add.setShowAsAction(2);
                    add.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.a
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            TextContextMenuItem.this.d.b(this.a);
                            return true;
                        }
                    });
                } else if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                    i = i7 + 1;
                    final Context context = this.d.getContext();
                    TextContextMenuTextClassificationItem textContextMenuTextClassificationItem = (TextContextMenuTextClassificationItem) textContextMenuComponent;
                    final TextClassification textClassification = textContextMenuTextClassificationItem.b;
                    int i10 = textContextMenuTextClassificationItem.c;
                    Drawable drawable = textContextMenuTextClassificationItem.d;
                    if (i10 < 0) {
                        MenuItem add2 = menu.add(R.id.textAssist, R.id.textAssist, i7, textClassification.getLabel());
                        add2.setShowAsAction(2);
                        add2.setIcon(drawable);
                        add2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: jh
                            @Override // android.view.MenuItem.OnMenuItemClickListener
                            public final boolean onMenuItemClick(MenuItem menuItem) {
                                int i11;
                                TextClassification textClassification2 = textClassification;
                                String text = textClassification2.getText();
                                if (text != null) {
                                    i11 = text.hashCode();
                                } else {
                                    i11 = 0;
                                }
                                TextClassificationHelperApi28.a(PendingIntent.getActivity(context, i11, textClassification2.getIntent(), 201326592));
                                return true;
                            }
                        });
                    } else {
                        if (i10 == 0) {
                            i2 = 1;
                        } else {
                            i2 = i5;
                        }
                        final RemoteAction remoteAction = textClassification.getActions().get(i10);
                        if (i2 != 0) {
                            i3 = 16908353;
                        } else {
                            i3 = i5;
                        }
                        MenuItem add3 = menu.add(R.id.textAssist, i3, i7, remoteAction.getTitle());
                        if (i2 == 0) {
                            i9 = 0;
                        }
                        add3.setShowAsAction(i9);
                        if (drawable != null) {
                            add3.setIcon(drawable);
                        }
                        add3.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: kh
                            @Override // android.view.MenuItem.OnMenuItemClickListener
                            public final boolean onMenuItemClick(MenuItem menuItem) {
                                TextClassificationHelperApi28.a(remoteAction.getActionIntent());
                                return true;
                            }
                        });
                    }
                } else {
                    if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                        i8++;
                    }
                    i6++;
                    i5 = 0;
                }
                i7 = i;
                i6++;
                i5 = 0;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TextContextMenuSessionImpl implements TextContextMenuSession {
        public final BufferedChannel a = ChannelKt.a(0, 7, null);

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public final void close() {
            this.a.j(Unit.a);
        }
    }

    public AndroidTextContextMenuToolbarProvider(View view, Function1 function1, Function0 function0) {
        this.a = view;
        this.b = function1;
        this.c = function0;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public final Object a(TextContextMenuDataProvider textContextMenuDataProvider, SuspendLambda suspendLambda) {
        Object b = MutatorMutex.b(this.d, new AndroidTextContextMenuToolbarProvider$showTextContextMenu$2(this, textContextMenuDataProvider, null), suspendLambda);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return Unit.a;
    }
}
