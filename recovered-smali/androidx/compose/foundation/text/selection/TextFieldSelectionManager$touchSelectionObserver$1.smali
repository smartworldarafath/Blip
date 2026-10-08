.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# instance fields
.field public a:Z

.field public b:Landroidx/compose/ui/text/TextRange;

.field public c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

.field public final synthetic d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->a:Z

    .line 8
    .line 9
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->a:Landroidx/compose/foundation/text/selection/a;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/compose/foundation/text/Handle;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    sget-object v2, Landroidx/compose/foundation/text/Handle;->l:Landroidx/compose/foundation/text/Handle;

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    iput v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->s:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->a:Z

    .line 36
    .line 37
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p()V

    .line 40
    .line 41
    .line 42
    iget-object p3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    invoke-virtual {p3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->c(J)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-ne p3, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    iget-object p3, p3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 64
    .line 65
    iget-object p3, p3, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_1

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    sget-wide v3, Landroidx/compose/ui/text/TextRange;->b:J

    .line 83
    .line 84
    const/4 v1, 0x5

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-static {p3, v5, v3, v4, v1}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 91
    .line 92
    new-instance v8, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;

    .line 93
    .line 94
    invoke-direct {v8, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;-><init>(I)V

    .line 95
    .line 96
    .line 97
    const/4 v4, 0x1

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v7, 0x1

    .line 100
    move-wide v2, p1

    .line 101
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;JZZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZLandroidx/compose/ui/hapticfeedback/HapticFeedbackType;)J

    .line 102
    .line 103
    .line 104
    move-result-wide p1

    .line 105
    move-wide v3, v2

    .line 106
    new-instance p3, Landroidx/compose/ui/text/TextRange;

    .line 107
    .line 108
    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 109
    .line 110
    .line 111
    iput-object p3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/ui/text/TextRange;

    .line 112
    .line 113
    new-instance p3, Landroidx/compose/ui/text/TextRange;

    .line 114
    .line 115
    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 116
    .line 117
    .line 118
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->b:Landroidx/compose/ui/text/TextRange;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    move-wide v3, p1

    .line 122
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    invoke-virtual {p1, v3, v4, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b(JZ)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iget-object p2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 137
    .line 138
    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iget-object p2, p2, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 147
    .line 148
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    invoke-static {p2, v5, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Z)V

    .line 157
    .line 158
    .line 159
    iget-object p2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 160
    .line 161
    if-eqz p2, :cond_3

    .line 162
    .line 163
    check-cast p2, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 164
    .line 165
    invoke-virtual {p2, v2}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->a(I)V

    .line 166
    .line 167
    .line 168
    :cond_3
    iget-object p2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c:Lkotlin/jvm/functions/Function1;

    .line 169
    .line 170
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iget-wide p1, p1, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 174
    .line 175
    new-instance p3, Landroidx/compose/ui/text/TextRange;

    .line 176
    .line 177
    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 178
    .line 179
    .line 180
    iput-object p3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->v:Landroidx/compose/ui/text/TextRange;

    .line 181
    .line 182
    :cond_4
    iput-boolean v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->a:Z

    .line 183
    .line 184
    :goto_0
    sget-object p0, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 187
    .line 188
    .line 189
    iput-wide v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n:J

    .line 190
    .line 191
    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    .line 192
    .line 193
    invoke-direct {p0, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 194
    .line 195
    .line 196
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r:Landroidx/compose/runtime/MutableState;

    .line 197
    .line 198
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 199
    .line 200
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const-wide/16 p0, 0x0

    .line 204
    .line 205
    iput-wide p0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 206
    .line 207
    :cond_5
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 26
    .line 27
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 32
    .line 33
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n:J

    .line 45
    .line 46
    iget-wide v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 47
    .line 48
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 53
    .line 54
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r:Landroidx/compose/runtime/MutableState;

    .line 58
    .line 59
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/ui/text/TextRange;

    .line 65
    .line 66
    const/16 v2, 0x9

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-wide v3, v1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 78
    .line 79
    invoke-virtual {p1, v3, v4}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->c(J)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 86
    .line 87
    iget-wide v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n:J

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    invoke-virtual {p1, v3, v4, v5}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b(JZ)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-interface {v1, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-wide v6, v4, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 108
    .line 109
    invoke-virtual {p1, v6, v7, v5}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b(JZ)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-interface {v3, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-ne v1, p1, :cond_1

    .line 118
    .line 119
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->a:Landroidx/compose/foundation/text/selection/a;

    .line 120
    .line 121
    :goto_0
    move-object v6, p1

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->b:Landroidx/compose/foundation/text/selection/a;

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-wide v3, p1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 138
    .line 139
    new-instance v8, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;

    .line 140
    .line 141
    invoke-direct {v8, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;-><init>(I)V

    .line 142
    .line 143
    .line 144
    move-wide v2, v3

    .line 145
    const/4 v4, 0x0

    .line 146
    const/4 v5, 0x0

    .line 147
    const/4 v7, 0x1

    .line 148
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;JZZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZLandroidx/compose/ui/hapticfeedback/HapticFeedbackType;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    goto :goto_3

    .line 153
    :cond_2
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/ui/text/TextRange;

    .line 154
    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    iget-wide v3, v1, Landroidx/compose/ui/text/TextRange;->a:J

    .line 158
    .line 159
    const/16 v1, 0x20

    .line 160
    .line 161
    shr-long/2addr v3, v1

    .line 162
    long-to-int v1, v3

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    iget-wide v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n:J

    .line 165
    .line 166
    invoke-virtual {p1, v3, v4, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b(JZ)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iget-wide v3, v3, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 178
    .line 179
    invoke-virtual {p1, v3, v4, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b(JZ)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/ui/text/TextRange;

    .line 184
    .line 185
    if-nez v3, :cond_4

    .line 186
    .line 187
    if-ne v1, p1, :cond_4

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-wide v3, p1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 202
    .line 203
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 204
    .line 205
    new-instance v8, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;

    .line 206
    .line 207
    invoke-direct {v8, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;-><init>(I)V

    .line 208
    .line 209
    .line 210
    move-wide v2, v3

    .line 211
    const/4 v4, 0x0

    .line 212
    const/4 v5, 0x0

    .line 213
    const/4 v7, 0x1

    .line 214
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;JZZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZLandroidx/compose/ui/hapticfeedback/HapticFeedbackType;)J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    :goto_3
    new-instance p1, Landroidx/compose/ui/text/TextRange;

    .line 219
    .line 220
    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 221
    .line 222
    .line 223
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->b:Landroidx/compose/ui/text/TextRange;

    .line 224
    .line 225
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/ui/text/TextRange;

    .line 226
    .line 227
    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/TextRange;->a(JLjava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_5

    .line 232
    .line 233
    iput-boolean p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->a:Z

    .line 234
    .line 235
    :cond_5
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 236
    .line 237
    .line 238
    :cond_6
    :goto_4
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->a:Landroidx/compose/foundation/text/selection/a;

    .line 19
    .line 20
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->c:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->b:Landroidx/compose/ui/text/TextRange;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-wide v3, v3, Landroidx/compose/ui/text/TextRange;->a:J

    .line 31
    .line 32
    :goto_0
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    if-eqz v3, :cond_1

    .line 45
    .line 46
    sget-object v4, Landroidx/compose/foundation/text/HandleState;->l:Landroidx/compose/foundation/text/HandleState;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sget-object v4, Landroidx/compose/foundation/text/HandleState;->k:Landroidx/compose/foundation/text/HandleState;

    .line 50
    .line 51
    :goto_2
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    move v6, v1

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    move v6, v5

    .line 70
    :goto_3
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->m:Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 77
    .line 78
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 82
    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    invoke-static {v0, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    move v6, v1

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move v6, v5

    .line 96
    :goto_4
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->n:Landroidx/compose/runtime/MutableState;

    .line 97
    .line 98
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 103
    .line 104
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 108
    .line 109
    if-eqz v4, :cond_7

    .line 110
    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    move v1, v5

    .line 121
    :goto_5
    iget-object v3, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->o:Landroidx/compose/runtime/MutableState;

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 128
    .line 129
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    iget-boolean p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->a:Z

    .line 133
    .line 134
    if-eqz p0, :cond_8

    .line 135
    .line 136
    iget-object p0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/ui/text/TextRange;

    .line 137
    .line 138
    invoke-static {v0, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/TextRange;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    iput-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/ui/text/TextRange;

    .line 142
    .line 143
    return-void
.end method

.method public final onCancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
