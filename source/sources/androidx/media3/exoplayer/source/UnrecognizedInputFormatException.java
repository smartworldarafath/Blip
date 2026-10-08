package androidx.media3.exoplayer.source;

import androidx.media3.common.ParserException;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class UnrecognizedInputFormatException extends ParserException {
    public final ImmutableList l;

    public UnrecognizedInputFormatException(String str, List list) {
        super(str, null, false, 1);
        this.l = ImmutableList.m(list);
    }

    @Override // androidx.media3.common.ParserException, java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        ImmutableList immutableList = this.l;
        if (immutableList.isEmpty()) {
            return message;
        }
        return message + "\nsniff failures: " + immutableList;
    }
}
