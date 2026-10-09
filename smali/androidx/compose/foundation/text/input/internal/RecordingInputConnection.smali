.class public final Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field public final a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

.field public final b:Z

.field public final c:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final e:Landroidx/compose/ui/platform/ViewConfiguration;

.field public f:I

.field public g:Landroidx/compose/ui/text/input/TextFieldValue;

.field public h:I

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;ZLandroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    .line 5
    .line 6
    iput-boolean p3, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b:Z

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->e:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/ui/text/input/EditCommand;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->j:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->c()Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->c()Z

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final beginBatchEdit()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->c:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 35
    .line 36
    if-lez p0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final clearMetaKeyStates(I)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    return p0
.end method

.method public final closeConnection()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->f:I

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->j:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :goto_0
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    return p0
.end method

.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    return p0
.end method

.method public final commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    return p1
.end method

.method public final commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return v0
.end method

.method public final d(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/view/KeyEvent;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final deleteSurroundingText(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public final endBatchEdit()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->c()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final finishComposingText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public final getCursorCapsMode(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v0, v1

    .line 8
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->i:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 15
    .line 16
    :cond_1
    iput v1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->h:I

    .line 17
    .line 18
    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection_androidKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    iget-wide v0, p1, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/ui/text/input/TextFieldValueKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->b(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->c(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final performContextMenuAction(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :pswitch_0
    const/16 p1, 0x117

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->d(I)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :pswitch_1
    const/16 p1, 0x116

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->d(I)V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :pswitch_2
    const/16 p1, 0x115

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->d(I)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :pswitch_3
    new-instance p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performEditorAction(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "IME sends unsupported Editor Action: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "RecordingIC"

    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    move p1, v0

    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    const/4 p1, 0x5

    .line 33
    goto :goto_0

    .line 34
    :pswitch_1
    const/4 p1, 0x7

    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    const/4 p1, 0x6

    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    const/4 p1, 0x4

    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    const/4 p1, 0x3

    .line 41
    goto :goto_0

    .line 42
    :pswitch_5
    const/4 p1, 0x2

    .line 43
    :goto_0
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->d:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    new-instance v1, Landroidx/compose/ui/text/input/ImeAction;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Landroidx/compose/ui/text/input/ImeAction;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_1
    return v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v4, 0x22

    .line 10
    .line 11
    if-lt v3, v4, :cond_2c

    .line 12
    .line 13
    new-instance v3, Lma;

    .line 14
    .line 15
    const/16 v4, 0xe

    .line 16
    .line 17
    invoke-direct {v3, v4, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    if-eqz v5, :cond_29

    .line 25
    .line 26
    iget-object v7, v5, Landroidx/compose/foundation/text/LegacyTextFieldState;->j:Landroidx/compose/ui/text/AnnotatedString;

    .line 27
    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    goto/16 :goto_11

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const/4 v9, 0x0

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    iget-object v8, v8, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 40
    .line 41
    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 42
    .line 43
    if-eqz v8, :cond_1

    .line 44
    .line 45
    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v8, v9

    .line 49
    :goto_0
    invoke-virtual {v7, v8}, Landroidx/compose/ui/text/AnnotatedString;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-nez v8, :cond_2

    .line 54
    .line 55
    goto/16 :goto_11

    .line 56
    .line 57
    :cond_2
    invoke-static/range {p1 .. p1}, Ld1;->t(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const-wide v10, 0xffffffffL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const/16 v8, 0x20

    .line 67
    .line 68
    const/4 v12, 0x1

    .line 69
    iget-object v13, v0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 70
    .line 71
    if-eqz v6, :cond_6

    .line 72
    .line 73
    invoke-static/range {p1 .. p1}, Lb9;->p(Ljava/lang/Object;)Landroid/view/inputmethod/SelectGesture;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Ld1;->i(Landroid/view/inputmethod/SelectGesture;)Landroid/graphics/RectF;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v0}, Ld1;->d(Landroid/view/inputmethod/SelectGesture;)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eq v7, v12, :cond_3

    .line 90
    .line 91
    move v7, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v7, v12

    .line 94
    :goto_1
    invoke-static {v5, v6, v7}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_4

    .line 103
    .line 104
    invoke-static {v0}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    goto/16 :goto_11

    .line 113
    .line 114
    :cond_4
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 115
    .line 116
    shr-long v7, v5, v8

    .line 117
    .line 118
    long-to-int v7, v7

    .line 119
    and-long/2addr v5, v10

    .line 120
    long-to-int v5, v5

    .line 121
    invoke-direct {v0, v7, v5}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    if-eqz v13, :cond_5

    .line 128
    .line 129
    invoke-virtual {v13, v12}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Z)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_2
    move v6, v12

    .line 133
    goto/16 :goto_11

    .line 134
    .line 135
    :cond_6
    invoke-static/range {p1 .. p1}, Lb9;->B(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_a

    .line 140
    .line 141
    invoke-static/range {p1 .. p1}, Lb9;->j(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteGesture;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lb9;->u(Landroid/view/inputmethod/DeleteGesture;)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eq v6, v12, :cond_7

    .line 150
    .line 151
    move v6, v4

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    move v6, v12

    .line 154
    :goto_3
    invoke-static {v0}, Lb9;->w(Landroid/view/inputmethod/DeleteGesture;)Landroid/graphics/RectF;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-static {v8}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v5, v8, v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v8

    .line 166
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_8

    .line 171
    .line 172
    invoke-static {v0}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    goto/16 :goto_11

    .line 181
    .line 182
    :cond_8
    if-ne v6, v12, :cond_9

    .line 183
    .line 184
    move v0, v12

    .line 185
    goto :goto_4

    .line 186
    :cond_9
    move v0, v4

    .line 187
    :goto_4
    invoke-static {v8, v9, v7, v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->b(JLandroidx/compose/ui/text/AnnotatedString;ZLma;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_a
    invoke-static/range {p1 .. p1}, Lb9;->C(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_d

    .line 196
    .line 197
    invoke-static/range {p1 .. p1}, Lb9;->q(Ljava/lang/Object;)Landroid/view/inputmethod/SelectRangeGesture;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Lb9;->i(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-static {v0}, Lb9;->x(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-static {v7}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-static {v0}, Ld1;->e(Landroid/view/inputmethod/SelectRangeGesture;)I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eq v9, v12, :cond_b

    .line 222
    .line 223
    move v9, v4

    .line 224
    goto :goto_5

    .line 225
    :cond_b
    move v9, v12

    .line 226
    :goto_5
    invoke-static {v5, v6, v7, v9}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v5

    .line 230
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_c

    .line 235
    .line 236
    invoke-static {v0}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    goto/16 :goto_11

    .line 245
    .line 246
    :cond_c
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 247
    .line 248
    shr-long v7, v5, v8

    .line 249
    .line 250
    long-to-int v7, v7

    .line 251
    and-long/2addr v5, v10

    .line 252
    long-to-int v5, v5

    .line 253
    invoke-direct {v0, v7, v5}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v0}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    if-eqz v13, :cond_5

    .line 260
    .line 261
    invoke-virtual {v13, v12}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Z)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :cond_d
    invoke-static/range {p1 .. p1}, Lb9;->D(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-eqz v6, :cond_11

    .line 271
    .line 272
    invoke-static/range {p1 .. p1}, Lb9;->k(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteRangeGesture;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v0}, Lb9;->b(Landroid/view/inputmethod/DeleteRangeGesture;)I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    if-eq v6, v12, :cond_e

    .line 281
    .line 282
    move v6, v4

    .line 283
    goto :goto_6

    .line 284
    :cond_e
    move v6, v12

    .line 285
    :goto_6
    invoke-static {v0}, Lb9;->h(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-static {v8}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-static {v0}, Ld1;->x(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    invoke-static {v9}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-static {v5, v8, v9, v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 302
    .line 303
    .line 304
    move-result-wide v8

    .line 305
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_f

    .line 310
    .line 311
    invoke-static {v0}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    goto/16 :goto_11

    .line 320
    .line 321
    :cond_f
    if-ne v6, v12, :cond_10

    .line 322
    .line 323
    move v0, v12

    .line 324
    goto :goto_7

    .line 325
    :cond_10
    move v0, v4

    .line 326
    :goto_7
    invoke-static {v8, v9, v7, v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->b(JLandroidx/compose/ui/text/AnnotatedString;ZLma;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :cond_11
    invoke-static/range {p1 .. p1}, Lb9;->A(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    const/4 v10, 0x2

    .line 336
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->e:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 337
    .line 338
    const/4 v11, -0x1

    .line 339
    if-eqz v6, :cond_1a

    .line 340
    .line 341
    invoke-static/range {p1 .. p1}, Lb9;->n(Ljava/lang/Object;)Landroid/view/inputmethod/JoinOrSplitGesture;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    if-nez v0, :cond_12

    .line 346
    .line 347
    invoke-static {v6}, Lb9;->y(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    goto/16 :goto_11

    .line 356
    .line 357
    :cond_12
    invoke-static {v6}, Lb9;->e(Landroid/view/inputmethod/JoinOrSplitGesture;)Landroid/graphics/PointF;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    invoke-static {v9}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    .line 362
    .line 363
    .line 364
    move-result-wide v13

    .line 365
    invoke-static {v5, v13, v14, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->a(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eq v0, v11, :cond_19

    .line 370
    .line 371
    invoke-virtual {v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    if-eqz v5, :cond_13

    .line 376
    .line 377
    iget-object v5, v5, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 378
    .line 379
    invoke-static {v5, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->c(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-ne v5, v12, :cond_13

    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_13
    move v5, v0

    .line 387
    :goto_8
    if-lez v5, :cond_15

    .line 388
    .line 389
    invoke-static {v7, v5}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->h(I)Z

    .line 394
    .line 395
    .line 396
    move-result v9

    .line 397
    if-nez v9, :cond_14

    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_14
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    sub-int/2addr v5, v6

    .line 405
    goto :goto_8

    .line 406
    :cond_15
    :goto_9
    iget-object v6, v7, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-ge v0, v6, :cond_17

    .line 413
    .line 414
    invoke-static {v7, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->h(I)Z

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    if-nez v9, :cond_16

    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_16
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    add-int/2addr v0, v6

    .line 430
    goto :goto_9

    .line 431
    :cond_17
    :goto_a
    invoke-static {v5, v0}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 432
    .line 433
    .line 434
    move-result-wide v5

    .line 435
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_18

    .line 440
    .line 441
    shr-long/2addr v5, v8

    .line 442
    long-to-int v0, v5

    .line 443
    new-instance v5, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 444
    .line 445
    invoke-direct {v5, v0, v0}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 446
    .line 447
    .line 448
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 449
    .line 450
    const-string v6, " "

    .line 451
    .line 452
    invoke-direct {v0, v6, v12}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 453
    .line 454
    .line 455
    new-array v6, v10, [Landroidx/compose/ui/text/input/EditCommand;

    .line 456
    .line 457
    aput-object v5, v6, v4

    .line 458
    .line 459
    aput-object v0, v6, v12

    .line 460
    .line 461
    new-instance v0, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    .line 462
    .line 463
    invoke-direct {v0, v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3, v0}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    goto/16 :goto_2

    .line 470
    .line 471
    :cond_18
    invoke-static {v5, v6, v7, v4, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->b(JLandroidx/compose/ui/text/AnnotatedString;ZLma;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_2

    .line 475
    .line 476
    :cond_19
    :goto_b
    invoke-static {v6}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    goto/16 :goto_11

    .line 485
    .line 486
    :cond_1a
    invoke-static/range {p1 .. p1}, Lb9;->t(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v6

    .line 490
    if-eqz v6, :cond_1e

    .line 491
    .line 492
    invoke-static/range {p1 .. p1}, Lb9;->m(Ljava/lang/Object;)Landroid/view/inputmethod/InsertGesture;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    if-nez v0, :cond_1b

    .line 497
    .line 498
    invoke-static {v6}, Lb9;->y(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    goto/16 :goto_11

    .line 507
    .line 508
    :cond_1b
    invoke-static {v6}, Lb9;->d(Landroid/view/inputmethod/InsertGesture;)Landroid/graphics/PointF;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    invoke-static {v7}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    .line 513
    .line 514
    .line 515
    move-result-wide v7

    .line 516
    invoke-static {v5, v7, v8, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->a(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eq v0, v11, :cond_1d

    .line 521
    .line 522
    invoke-virtual {v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    if-eqz v5, :cond_1c

    .line 527
    .line 528
    iget-object v5, v5, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 529
    .line 530
    invoke-static {v5, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->c(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    if-ne v5, v12, :cond_1c

    .line 535
    .line 536
    goto :goto_c

    .line 537
    :cond_1c
    invoke-static {v6}, Lb9;->s(Landroid/view/inputmethod/InsertGesture;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    new-instance v6, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 542
    .line 543
    invoke-direct {v6, v0, v0}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 544
    .line 545
    .line 546
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 547
    .line 548
    invoke-direct {v0, v5, v12}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 549
    .line 550
    .line 551
    new-array v5, v10, [Landroidx/compose/ui/text/input/EditCommand;

    .line 552
    .line 553
    aput-object v6, v5, v4

    .line 554
    .line 555
    aput-object v0, v5, v12

    .line 556
    .line 557
    new-instance v0, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    .line 558
    .line 559
    invoke-direct {v0, v5}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3, v0}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    goto/16 :goto_2

    .line 566
    .line 567
    :cond_1d
    :goto_c
    invoke-static {v6}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    goto/16 :goto_11

    .line 576
    .line 577
    :cond_1e
    invoke-static/range {p1 .. p1}, Lb9;->z(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    if-eqz v6, :cond_28

    .line 582
    .line 583
    invoke-static/range {p1 .. p1}, Lb9;->o(Ljava/lang/Object;)Landroid/view/inputmethod/RemoveSpaceGesture;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    invoke-virtual {v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 588
    .line 589
    .line 590
    move-result-object v13

    .line 591
    if-eqz v13, :cond_1f

    .line 592
    .line 593
    iget-object v9, v13, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 594
    .line 595
    :cond_1f
    invoke-static {v6}, Lb9;->f(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    .line 596
    .line 597
    .line 598
    move-result-object v13

    .line 599
    invoke-static {v13}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    .line 600
    .line 601
    .line 602
    move-result-wide v13

    .line 603
    invoke-static {v6}, Lb9;->v(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    .line 604
    .line 605
    .line 606
    move-result-object v15

    .line 607
    move-object/from16 v17, v5

    .line 608
    .line 609
    invoke-static {v15}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    .line 610
    .line 611
    .line 612
    move-result-wide v4

    .line 613
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/text/LegacyTextFieldState;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 614
    .line 615
    .line 616
    move-result-object v15

    .line 617
    if-eqz v9, :cond_20

    .line 618
    .line 619
    iget-object v9, v9, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 620
    .line 621
    if-nez v15, :cond_21

    .line 622
    .line 623
    :cond_20
    move/from16 v17, v8

    .line 624
    .line 625
    goto :goto_e

    .line 626
    :cond_21
    invoke-interface {v15, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->R(J)J

    .line 627
    .line 628
    .line 629
    move-result-wide v13

    .line 630
    invoke-interface {v15, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->R(J)J

    .line 631
    .line 632
    .line 633
    move-result-wide v4

    .line 634
    invoke-static {v9, v13, v14, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->e(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 635
    .line 636
    .line 637
    move-result v15

    .line 638
    invoke-static {v9, v4, v5, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->e(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-ne v15, v11, :cond_22

    .line 643
    .line 644
    if-ne v0, v11, :cond_24

    .line 645
    .line 646
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->b:J

    .line 647
    .line 648
    move/from16 v17, v8

    .line 649
    .line 650
    goto :goto_f

    .line 651
    :cond_22
    if-ne v0, v11, :cond_23

    .line 652
    .line 653
    goto :goto_d

    .line 654
    :cond_23
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    .line 655
    .line 656
    .line 657
    move-result v15

    .line 658
    :goto_d
    move v0, v15

    .line 659
    :cond_24
    invoke-virtual {v9, v0}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    .line 660
    .line 661
    .line 662
    move-result v15

    .line 663
    invoke-virtual {v9, v0}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    add-float/2addr v0, v15

    .line 668
    const/high16 v15, 0x40000000    # 2.0f

    .line 669
    .line 670
    div-float/2addr v0, v15

    .line 671
    new-instance v15, Landroidx/compose/ui/geometry/Rect;

    .line 672
    .line 673
    shr-long/2addr v13, v8

    .line 674
    long-to-int v13, v13

    .line 675
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 676
    .line 677
    .line 678
    move-result v14

    .line 679
    shr-long/2addr v4, v8

    .line 680
    long-to-int v4, v4

    .line 681
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    .line 686
    .line 687
    .line 688
    move-result v5

    .line 689
    const v14, 0x3dcccccd    # 0.1f

    .line 690
    .line 691
    .line 692
    move/from16 v17, v8

    .line 693
    .line 694
    sub-float v8, v0, v14

    .line 695
    .line 696
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 697
    .line 698
    .line 699
    move-result v13

    .line 700
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    add-float/2addr v0, v14

    .line 709
    invoke-direct {v15, v5, v8, v4, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 710
    .line 711
    .line 712
    sget-object v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->a:Lfe;

    .line 713
    .line 714
    const/4 v4, 0x0

    .line 715
    invoke-virtual {v9, v15, v4, v0}, Landroidx/compose/ui/text/MultiParagraph;->h(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    .line 716
    .line 717
    .line 718
    move-result-wide v8

    .line 719
    move-wide v4, v8

    .line 720
    goto :goto_f

    .line 721
    :goto_e
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->b:J

    .line 722
    .line 723
    :goto_f
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    if-eqz v0, :cond_25

    .line 728
    .line 729
    invoke-static {v6}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 734
    .line 735
    .line 736
    move-result v6

    .line 737
    goto :goto_11

    .line 738
    :cond_25
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 739
    .line 740
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 741
    .line 742
    .line 743
    iput v11, v0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 744
    .line 745
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 746
    .line 747
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 748
    .line 749
    .line 750
    iput v11, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 751
    .line 752
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 753
    .line 754
    .line 755
    move-result v9

    .line 756
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 757
    .line 758
    .line 759
    move-result v13

    .line 760
    invoke-virtual {v7, v9, v13}, Landroidx/compose/ui/text/AnnotatedString;->d(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 761
    .line 762
    .line 763
    move-result-object v7

    .line 764
    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 765
    .line 766
    new-instance v9, Lkotlin/text/Regex;

    .line 767
    .line 768
    const-string v13, "\\s+"

    .line 769
    .line 770
    invoke-direct {v9, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    new-instance v13, Lb;

    .line 774
    .line 775
    const/16 v14, 0x10

    .line 776
    .line 777
    invoke-direct {v13, v14, v0, v8}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v9, v7, v13}, Lkotlin/text/Regex;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 785
    .line 786
    if-eq v0, v11, :cond_27

    .line 787
    .line 788
    iget v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 789
    .line 790
    if-ne v9, v11, :cond_26

    .line 791
    .line 792
    goto :goto_10

    .line 793
    :cond_26
    shr-long v13, v4, v17

    .line 794
    .line 795
    long-to-int v6, v13

    .line 796
    add-int v11, v6, v0

    .line 797
    .line 798
    add-int/2addr v6, v9

    .line 799
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 800
    .line 801
    .line 802
    move-result v9

    .line 803
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->d(J)I

    .line 804
    .line 805
    .line 806
    move-result v4

    .line 807
    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 808
    .line 809
    sub-int/2addr v4, v5

    .line 810
    sub-int/2addr v9, v4

    .line 811
    invoke-virtual {v7, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    new-instance v4, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 816
    .line 817
    invoke-direct {v4, v11, v6}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 818
    .line 819
    .line 820
    new-instance v5, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 821
    .line 822
    invoke-direct {v5, v0, v12}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 823
    .line 824
    .line 825
    new-array v0, v10, [Landroidx/compose/ui/text/input/EditCommand;

    .line 826
    .line 827
    const/16 v16, 0x0

    .line 828
    .line 829
    aput-object v4, v0, v16

    .line 830
    .line 831
    aput-object v5, v0, v12

    .line 832
    .line 833
    new-instance v4, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    .line 834
    .line 835
    invoke-direct {v4, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v3, v4}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    goto/16 :goto_2

    .line 842
    .line 843
    :cond_27
    :goto_10
    invoke-static {v6}, Lb9;->l(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-static {v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lma;)I

    .line 848
    .line 849
    .line 850
    move-result v6

    .line 851
    goto :goto_11

    .line 852
    :cond_28
    move v6, v10

    .line 853
    :cond_29
    :goto_11
    if-nez v2, :cond_2a

    .line 854
    .line 855
    goto :goto_12

    .line 856
    :cond_2a
    if-eqz v1, :cond_2b

    .line 857
    .line 858
    new-instance v0, Lw2;

    .line 859
    .line 860
    const/4 v4, 0x0

    .line 861
    invoke-direct {v0, v6, v4, v2}, Lw2;-><init>(IILjava/lang/Object;)V

    .line 862
    .line 863
    .line 864
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :cond_2b
    invoke-interface {v2, v6}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 869
    .line 870
    .line 871
    :cond_2c
    :goto_12
    return-void
.end method

.method public final performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    :cond_0
    return p0
.end method

.method public final previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_14

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 9
    .line 10
    if-eqz v0, :cond_14

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->j:Landroidx/compose/ui/text/AnnotatedString;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v3, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 25
    .line 26
    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    :goto_0
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_2
    invoke-static {p1}, Ld1;->t(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v3, 0x1

    .line 47
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-static {p1}, Lb9;->p(Ljava/lang/Object;)Landroid/view/inputmethod/SelectGesture;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p0, :cond_12

    .line 56
    .line 57
    invoke-static {p1}, Ld1;->i(Landroid/view/inputmethod/SelectGesture;)Landroid/graphics/RectF;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {p1}, Ld1;->d(Landroid/view/inputmethod/SelectGesture;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eq p1, v3, :cond_3

    .line 70
    .line 71
    move p1, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move p1, v3

    .line 74
    :goto_1
    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->f(J)V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->b:J

    .line 90
    .line 91
    invoke-virtual {p1, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->e(J)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_12

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_6
    invoke-static {p1}, Lb9;->B(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_a

    .line 115
    .line 116
    invoke-static {p1}, Lb9;->j(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteGesture;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p0, :cond_12

    .line 121
    .line 122
    invoke-static {p1}, Lb9;->g(Landroid/view/inputmethod/DeleteGesture;)Landroid/graphics/RectF;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {p1}, Lb9;->a(Landroid/view/inputmethod/DeleteGesture;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eq p1, v3, :cond_7

    .line 135
    .line 136
    move p1, v2

    .line 137
    goto :goto_2

    .line 138
    :cond_7
    move p1, v3

    .line 139
    :goto_2
    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->e(J)V

    .line 148
    .line 149
    .line 150
    :cond_8
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 151
    .line 152
    if-eqz p1, :cond_9

    .line 153
    .line 154
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->b:J

    .line 155
    .line 156
    invoke-virtual {p1, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->f(J)V

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_12

    .line 164
    .line 165
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 166
    .line 167
    .line 168
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_a
    invoke-static {p1}, Lb9;->C(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_e

    .line 180
    .line 181
    invoke-static {p1}, Lb9;->q(Ljava/lang/Object;)Landroid/view/inputmethod/SelectRangeGesture;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p0, :cond_12

    .line 186
    .line 187
    invoke-static {p1}, Lb9;->i(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {p1}, Lb9;->x(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-static {v4}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {p1}, Ld1;->e(Landroid/view/inputmethod/SelectRangeGesture;)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eq p1, v3, :cond_b

    .line 208
    .line 209
    move p1, v2

    .line 210
    goto :goto_3

    .line 211
    :cond_b
    move p1, v3

    .line 212
    :goto_3
    invoke-static {v0, v1, v4, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 213
    .line 214
    .line 215
    move-result-wide v0

    .line 216
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 217
    .line 218
    if-eqz p1, :cond_c

    .line 219
    .line 220
    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->f(J)V

    .line 221
    .line 222
    .line 223
    :cond_c
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 224
    .line 225
    if-eqz p1, :cond_d

    .line 226
    .line 227
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->b:J

    .line 228
    .line 229
    invoke-virtual {p1, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->e(J)V

    .line 230
    .line 231
    .line 232
    :cond_d
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-nez p1, :cond_12

    .line 237
    .line 238
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 239
    .line 240
    .line 241
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 242
    .line 243
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_e
    invoke-static {p1}, Lb9;->D(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_14

    .line 252
    .line 253
    invoke-static {p1}, Lb9;->k(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteRangeGesture;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-eqz p0, :cond_12

    .line 258
    .line 259
    invoke-static {p1}, Ld1;->h(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {p1}, Ld1;->x(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-static {v4}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-static {p1}, Ld1;->c(Landroid/view/inputmethod/DeleteRangeGesture;)I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eq p1, v3, :cond_f

    .line 280
    .line 281
    move p1, v2

    .line 282
    goto :goto_4

    .line 283
    :cond_f
    move p1, v3

    .line 284
    :goto_4
    invoke-static {v0, v1, v4, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v0

    .line 288
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 289
    .line 290
    if-eqz p1, :cond_10

    .line 291
    .line 292
    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->e(J)V

    .line 293
    .line 294
    .line 295
    :cond_10
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 296
    .line 297
    if-eqz p1, :cond_11

    .line 298
    .line 299
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->b:J

    .line 300
    .line 301
    invoke-virtual {p1, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->f(J)V

    .line 302
    .line 303
    .line 304
    :cond_11
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-nez p1, :cond_12

    .line 309
    .line 310
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 311
    .line 312
    .line 313
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 314
    .line 315
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 316
    .line 317
    .line 318
    :cond_12
    :goto_5
    if-eqz p2, :cond_13

    .line 319
    .line 320
    new-instance p1, Lh6;

    .line 321
    .line 322
    invoke-direct {p1, v3, p0}, Lh6;-><init>(ILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 326
    .line 327
    .line 328
    :cond_13
    return v3

    .line 329
    :cond_14
    :goto_6
    return v2
.end method

.method public final reportFullscreenMode(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final requestCursorUpdates(I)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    and-int/lit8 v3, p1, 0x2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v5, 0x21

    .line 24
    .line 25
    if-lt v4, v5, :cond_8

    .line 26
    .line 27
    and-int/lit8 v5, p1, 0x10

    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    move v5, v2

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v5, v1

    .line 34
    :goto_2
    and-int/lit8 v6, p1, 0x8

    .line 35
    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    move v6, v2

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move v6, v1

    .line 41
    :goto_3
    and-int/lit8 v7, p1, 0x4

    .line 42
    .line 43
    if-eqz v7, :cond_4

    .line 44
    .line 45
    move v7, v2

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move v7, v1

    .line 48
    :goto_4
    const/16 v8, 0x22

    .line 49
    .line 50
    if-lt v4, v8, :cond_5

    .line 51
    .line 52
    and-int/lit8 p1, p1, 0x20

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_5
    if-nez v5, :cond_7

    .line 58
    .line 59
    if-nez v6, :cond_7

    .line 60
    .line 61
    if-nez v7, :cond_7

    .line 62
    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    if-lt v4, v8, :cond_6

    .line 66
    .line 67
    move p1, v2

    .line 68
    move v1, p1

    .line 69
    :goto_5
    move v5, v1

    .line 70
    :goto_6
    move v6, v5

    .line 71
    goto :goto_7

    .line 72
    :cond_6
    move p1, v1

    .line 73
    move v1, v2

    .line 74
    goto :goto_5

    .line 75
    :cond_7
    move p1, v1

    .line 76
    move v1, v7

    .line 77
    goto :goto_7

    .line 78
    :cond_8
    move p1, v1

    .line 79
    move v5, v2

    .line 80
    goto :goto_6

    .line 81
    :goto_7
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    .line 82
    .line 83
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 84
    .line 85
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->m:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    .line 86
    .line 87
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->c:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v4

    .line 90
    :try_start_0
    iput-boolean v5, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->f:Z

    .line 91
    .line 92
    iput-boolean v6, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->g:Z

    .line 93
    .line 94
    iput-boolean v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->h:Z

    .line 95
    .line 96
    iput-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->i:Z

    .line 97
    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    iput-boolean v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->e:Z

    .line 101
    .line 102
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 103
    .line 104
    if-eqz p1, :cond_9

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->a()V

    .line 107
    .line 108
    .line 109
    goto :goto_8

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_9

    .line 112
    :cond_9
    :goto_8
    iput-boolean v3, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    monitor-exit v4

    .line 115
    return v2

    .line 116
    :goto_9
    monitor-exit v4

    .line 117
    throw p0

    .line 118
    :cond_a
    return v0
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->a:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->k:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/view/inputmethod/BaseInputConnection;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    return v0
.end method

.method public final setComposingRegion(II)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return v0
.end method

.method public final setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/SetComposingTextCommand;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return v0
.end method

.method public final setSelection(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method
