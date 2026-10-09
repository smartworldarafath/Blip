package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import android.text.Layout;
import androidx.compose.ui.text.android.TextLayout_androidKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IndentationFixSpan_androidKt {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            try {
                iArr[Layout.Alignment.ALIGN_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public static final float a(Layout layout, int i, Paint paint) {
        int i2;
        float abs;
        float width;
        float lineLeft = layout.getLineLeft(i);
        ThreadLocal threadLocal = TextLayout_androidKt.a;
        if (layout.getEllipsisCount(i) <= 0 || layout.getParagraphDirection(i) != 1 || lineLeft >= 0.0f) {
            return 0.0f;
        }
        float measureText = paint.measureText("…") + (layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)) - lineLeft);
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if (paragraphAlignment == null) {
            i2 = -1;
        } else {
            i2 = WhenMappings.a[paragraphAlignment.ordinal()];
        }
        if (i2 == 1) {
            abs = Math.abs(lineLeft);
            width = (layout.getWidth() - measureText) / 2.0f;
        } else {
            abs = Math.abs(lineLeft);
            width = layout.getWidth() - measureText;
        }
        return width + abs;
    }

    public static final float b(Layout layout, int i, Paint paint) {
        float width;
        float width2;
        ThreadLocal threadLocal = TextLayout_androidKt.a;
        if (layout.getEllipsisCount(i) > 0) {
            int i2 = -1;
            if (layout.getParagraphDirection(i) == -1 && layout.getWidth() < layout.getLineRight(i)) {
                float measureText = paint.measureText("…") + (layout.getLineRight(i) - layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)));
                Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
                if (paragraphAlignment != null) {
                    i2 = WhenMappings.a[paragraphAlignment.ordinal()];
                }
                if (i2 == 1) {
                    width = layout.getWidth() - layout.getLineRight(i);
                    width2 = (layout.getWidth() - measureText) / 2.0f;
                } else {
                    width = layout.getWidth() - layout.getLineRight(i);
                    width2 = layout.getWidth() - measureText;
                }
                return width - width2;
            }
            return 0.0f;
        }
        return 0.0f;
    }
}
