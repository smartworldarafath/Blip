package androidx.compose.foundation.text;

import android.R;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextContextMenuItems {
    public static final /* synthetic */ TextContextMenuItems[] k;
    public final Object j;

    static {
        TextContextMenuItems[] textContextMenuItemsArr = {new TextContextMenuItems("Cut", 0, TextContextMenuKeys.a, R.string.cut, R.attr.actionModeCutDrawable), new TextContextMenuItems("Copy", 1, TextContextMenuKeys.b, R.string.copy, R.attr.actionModeCopyDrawable), new TextContextMenuItems("Paste", 2, TextContextMenuKeys.c, R.string.paste, R.attr.actionModePasteDrawable), new TextContextMenuItems("SelectAll", 3, TextContextMenuKeys.d, R.string.selectAll, R.attr.actionModeSelectAllDrawable), new TextContextMenuItems("Autofill", 4, TextContextMenuKeys.e, R.string.autofill, 0)};
        k = textContextMenuItemsArr;
        EnumEntriesKt.a(textContextMenuItemsArr);
    }

    public TextContextMenuItems(String str, int i, Object obj, int i2, int i3) {
        this.j = obj;
    }

    public static TextContextMenuItems valueOf(String str) {
        return (TextContextMenuItems) Enum.valueOf(TextContextMenuItems.class, str);
    }

    public static TextContextMenuItems[] values() {
        return (TextContextMenuItems[]) k.clone();
    }
}
