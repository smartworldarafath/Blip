package androidx.compose.ui.contentcapture;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ContentCaptureEventType {
    public static final ContentCaptureEventType j;
    public static final ContentCaptureEventType k;
    public static final /* synthetic */ ContentCaptureEventType[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.contentcapture.ContentCaptureEventType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.contentcapture.ContentCaptureEventType] */
    static {
        ?? r0 = new Enum("VIEW_APPEAR", 0);
        j = r0;
        ?? r1 = new Enum("VIEW_DISAPPEAR", 1);
        k = r1;
        ContentCaptureEventType[] contentCaptureEventTypeArr = {r0, r1};
        l = contentCaptureEventTypeArr;
        EnumEntriesKt.a(contentCaptureEventTypeArr);
    }

    public static ContentCaptureEventType valueOf(String str) {
        return (ContentCaptureEventType) Enum.valueOf(ContentCaptureEventType.class, str);
    }

    public static ContentCaptureEventType[] values() {
        return (ContentCaptureEventType[]) l.clone();
    }
}
