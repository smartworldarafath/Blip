package androidx.compose.foundation.text.contextmenu.internal;

import android.graphics.Rect;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FloatingTextActionModeCallback extends ActionMode.Callback2 implements ActionMode.Callback {
    public final TextActionModeCallback a;

    public FloatingTextActionModeCallback(TextActionModeCallback textActionModeCallback) {
        this.a = textActionModeCallback;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        this.a.getClass();
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        ((AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) this.a).a(menu);
        if (menu.size() > 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        ((AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl) ((AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) this.a).a).close();
    }

    @Override // android.view.ActionMode.Callback2
    public final void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
        androidx.compose.ui.geometry.Rect rect2 = (androidx.compose.ui.geometry.Rect) ((AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) this.a).c.a();
        rect.set(Math.round(rect2.a), Math.round(rect2.b), Math.round(rect2.c), Math.round(rect2.d));
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return ((AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) this.a).a(menu);
    }
}
