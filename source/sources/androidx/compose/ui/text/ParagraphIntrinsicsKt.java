package androidx.compose.ui.text;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ParagraphIntrinsicsKt {
    public static final boolean a(TextStyle textStyle) {
        EmojiSupportMatch emojiSupportMatch;
        PlatformParagraphStyle platformParagraphStyle;
        PlatformTextStyle platformTextStyle = textStyle.c;
        if (platformTextStyle != null && (platformParagraphStyle = platformTextStyle.a) != null) {
            emojiSupportMatch = new EmojiSupportMatch(platformParagraphStyle.b);
        } else {
            emojiSupportMatch = null;
        }
        boolean z = false;
        if (emojiSupportMatch != null && emojiSupportMatch.a == 1) {
            z = true;
        }
        return !z;
    }
}
