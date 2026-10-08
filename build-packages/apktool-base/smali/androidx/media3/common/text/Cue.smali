.class public final Landroidx/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/text/Cue$Builder;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/text/Layout$Alignment;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x24

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/media3/common/text/Cue;->s:Ljava/lang/String;

    .line 26
    .line 27
    const/16 v0, 0x11

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/media3/common/text/Cue;->t:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Landroidx/media3/common/text/Cue;->u:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Landroidx/media3/common/text/Cue;->v:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Landroidx/media3/common/text/Cue;->w:Ljava/lang/String;

    .line 55
    .line 56
    const/16 v0, 0x12

    .line 57
    .line 58
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Landroidx/media3/common/text/Cue;->x:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v0, 0x4

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Landroidx/media3/common/text/Cue;->y:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v0, 0x5

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Landroidx/media3/common/text/Cue;->z:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Landroidx/media3/common/text/Cue;->A:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v0, 0x7

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Landroidx/media3/common/text/Cue;->B:Ljava/lang/String;

    .line 91
    .line 92
    const/16 v0, 0x8

    .line 93
    .line 94
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Landroidx/media3/common/text/Cue;->C:Ljava/lang/String;

    .line 99
    .line 100
    const/16 v0, 0x9

    .line 101
    .line 102
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sput-object v0, Landroidx/media3/common/text/Cue;->D:Ljava/lang/String;

    .line 107
    .line 108
    const/16 v0, 0xa

    .line 109
    .line 110
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Landroidx/media3/common/text/Cue;->E:Ljava/lang/String;

    .line 115
    .line 116
    const/16 v0, 0xb

    .line 117
    .line 118
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Landroidx/media3/common/text/Cue;->F:Ljava/lang/String;

    .line 123
    .line 124
    const/16 v0, 0xc

    .line 125
    .line 126
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Landroidx/media3/common/text/Cue;->G:Ljava/lang/String;

    .line 131
    .line 132
    const/16 v0, 0xd

    .line 133
    .line 134
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sput-object v0, Landroidx/media3/common/text/Cue;->H:Ljava/lang/String;

    .line 139
    .line 140
    const/16 v0, 0xe

    .line 141
    .line 142
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sput-object v0, Landroidx/media3/common/text/Cue;->I:Ljava/lang/String;

    .line 147
    .line 148
    const/16 v0, 0xf

    .line 149
    .line 150
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Landroidx/media3/common/text/Cue;->J:Ljava/lang/String;

    .line 155
    .line 156
    const/16 v0, 0x10

    .line 157
    .line 158
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Landroidx/media3/common/text/Cue;->K:Ljava/lang/String;

    .line 163
    .line 164
    const/16 v0, 0x13

    .line 165
    .line 166
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Landroidx/media3/common/text/Cue;->L:Ljava/lang/String;

    .line 171
    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-nez p4, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 16
    .line 17
    .line 18
    :goto_1
    instance-of v0, p1, Landroid/text/Spanned;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 40
    .line 41
    :goto_2
    iput-object p2, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 42
    .line 43
    iput-object p3, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    .line 44
    .line 45
    iput-object p4, p0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    iput p5, p0, Landroidx/media3/common/text/Cue;->e:F

    .line 48
    .line 49
    iput p6, p0, Landroidx/media3/common/text/Cue;->f:I

    .line 50
    .line 51
    iput p7, p0, Landroidx/media3/common/text/Cue;->g:I

    .line 52
    .line 53
    iput p8, p0, Landroidx/media3/common/text/Cue;->h:F

    .line 54
    .line 55
    iput p9, p0, Landroidx/media3/common/text/Cue;->i:I

    .line 56
    .line 57
    iput p12, p0, Landroidx/media3/common/text/Cue;->j:F

    .line 58
    .line 59
    iput p13, p0, Landroidx/media3/common/text/Cue;->k:F

    .line 60
    .line 61
    iput-boolean p14, p0, Landroidx/media3/common/text/Cue;->l:Z

    .line 62
    .line 63
    move/from16 p1, p15

    .line 64
    .line 65
    iput p1, p0, Landroidx/media3/common/text/Cue;->m:I

    .line 66
    .line 67
    iput p10, p0, Landroidx/media3/common/text/Cue;->n:I

    .line 68
    .line 69
    iput p11, p0, Landroidx/media3/common/text/Cue;->o:F

    .line 70
    .line 71
    move/from16 p1, p16

    .line 72
    .line 73
    iput p1, p0, Landroidx/media3/common/text/Cue;->p:I

    .line 74
    .line 75
    move/from16 p1, p17

    .line 76
    .line 77
    iput p1, p0, Landroidx/media3/common/text/Cue;->q:F

    .line 78
    .line 79
    move/from16 p1, p18

    .line 80
    .line 81
    iput p1, p0, Landroidx/media3/common/text/Cue;->r:I

    .line 82
    .line 83
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 12

    .line 1
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/media3/common/text/Cue;->s:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->b(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    sget-object v3, Landroidx/media3/common/text/Cue;->t:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_5

    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/os/Bundle;

    .line 45
    .line 46
    sget-object v5, Landroidx/media3/common/text/CustomSpanBundler;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    sget-object v6, Landroidx/media3/common/text/CustomSpanBundler;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    sget-object v7, Landroidx/media3/common/text/CustomSpanBundler;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    sget-object v8, Landroidx/media3/common/text/CustomSpanBundler;->d:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v9, -0x1

    .line 67
    invoke-virtual {v4, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    sget-object v9, Landroidx/media3/common/text/CustomSpanBundler;->e:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eq v8, v2, :cond_3

    .line 78
    .line 79
    const/4 v9, 0x2

    .line 80
    if-eq v8, v9, :cond_2

    .line 81
    .line 82
    const/4 v9, 0x3

    .line 83
    if-eq v8, v9, :cond_1

    .line 84
    .line 85
    const/4 v9, 0x4

    .line 86
    if-eq v8, v9, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v8, Landroidx/media3/common/text/VoiceSpan;

    .line 93
    .line 94
    sget-object v9, Landroidx/media3/common/text/VoiceSpan;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-direct {v8, v4}, Landroidx/media3/common/text/VoiceSpan;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v8, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    new-instance v4, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v8, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 123
    .line 124
    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->d:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    sget-object v10, Landroidx/media3/common/text/TextEmphasisSpan;->e:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    sget-object v11, Landroidx/media3/common/text/TextEmphasisSpan;->f:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-direct {v8, v9, v10, v4}, Landroidx/media3/common/text/TextEmphasisSpan;-><init>(III)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v8, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance v8, Landroidx/media3/common/text/RubySpan;

    .line 153
    .line 154
    sget-object v9, Landroidx/media3/common/text/RubySpan;->c:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    sget-object v10, Landroidx/media3/common/text/RubySpan;->d:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-direct {v8, v9, v4}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v1, v8, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->b(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    sget-object v1, Landroidx/media3/common/text/Cue;->u:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Landroid/text/Layout$Alignment;

    .line 187
    .line 188
    if-eqz v1, :cond_6

    .line 189
    .line 190
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    .line 191
    .line 192
    :cond_6
    sget-object v1, Landroidx/media3/common/text/Cue;->v:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Landroid/text/Layout$Alignment;

    .line 199
    .line 200
    if-eqz v1, :cond_7

    .line 201
    .line 202
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->d:Landroid/text/Layout$Alignment;

    .line 203
    .line 204
    :cond_7
    sget-object v1, Landroidx/media3/common/text/Cue;->w:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroid/graphics/Bitmap;

    .line 211
    .line 212
    const/4 v3, 0x0

    .line 213
    const/4 v4, 0x0

    .line 214
    if-eqz v1, :cond_8

    .line 215
    .line 216
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 217
    .line 218
    iput-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_8
    sget-object v1, Landroidx/media3/common/text/Cue;->x:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eqz v1, :cond_9

    .line 228
    .line 229
    array-length v5, v1

    .line 230
    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 235
    .line 236
    iput-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 237
    .line 238
    :cond_9
    :goto_1
    sget-object v1, Landroidx/media3/common/text/Cue;->y:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_a

    .line 245
    .line 246
    sget-object v3, Landroidx/media3/common/text/Cue;->z:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_a

    .line 253
    .line 254
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 263
    .line 264
    iput v3, v0, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 265
    .line 266
    :cond_a
    sget-object v1, Landroidx/media3/common/text/Cue;->A:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_b

    .line 273
    .line 274
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 279
    .line 280
    :cond_b
    sget-object v1, Landroidx/media3/common/text/Cue;->B:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_c

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 293
    .line 294
    :cond_c
    sget-object v1, Landroidx/media3/common/text/Cue;->C:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_d

    .line 301
    .line 302
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 307
    .line 308
    :cond_d
    sget-object v1, Landroidx/media3/common/text/Cue;->E:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_e

    .line 315
    .line 316
    sget-object v3, Landroidx/media3/common/text/Cue;->D:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_e

    .line 323
    .line 324
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->k:F

    .line 333
    .line 334
    iput v3, v0, Landroidx/media3/common/text/Cue$Builder;->j:I

    .line 335
    .line 336
    :cond_e
    sget-object v1, Landroidx/media3/common/text/Cue;->F:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_f

    .line 343
    .line 344
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->l:F

    .line 349
    .line 350
    :cond_f
    sget-object v1, Landroidx/media3/common/text/Cue;->G:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_10

    .line 357
    .line 358
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->m:F

    .line 363
    .line 364
    :cond_10
    sget-object v1, Landroidx/media3/common/text/Cue;->H:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-eqz v3, :cond_11

    .line 371
    .line 372
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->o:I

    .line 377
    .line 378
    iput-boolean v2, v0, Landroidx/media3/common/text/Cue$Builder;->n:Z

    .line 379
    .line 380
    :cond_11
    sget-object v1, Landroidx/media3/common/text/Cue;->I:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-nez v1, :cond_12

    .line 387
    .line 388
    iput-boolean v4, v0, Landroidx/media3/common/text/Cue$Builder;->n:Z

    .line 389
    .line 390
    :cond_12
    sget-object v1, Landroidx/media3/common/text/Cue;->J:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-eqz v2, :cond_13

    .line 397
    .line 398
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->p:I

    .line 403
    .line 404
    :cond_13
    sget-object v1, Landroidx/media3/common/text/Cue;->K:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_14

    .line 411
    .line 412
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->q:F

    .line 417
    .line 418
    :cond_14
    sget-object v1, Landroidx/media3/common/text/Cue;->L:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eqz v2, :cond_15

    .line 425
    .line 426
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result p0

    .line 430
    iput p0, v0, Landroidx/media3/common/text/Cue$Builder;->r:I

    .line 431
    .line 432
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/media3/common/text/Cue$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    .line 19
    .line 20
    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->d:Landroid/text/Layout$Alignment;

    .line 21
    .line 22
    iget v1, p0, Landroidx/media3/common/text/Cue;->e:F

    .line 23
    .line 24
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 25
    .line 26
    iget v1, p0, Landroidx/media3/common/text/Cue;->f:I

    .line 27
    .line 28
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 29
    .line 30
    iget v1, p0, Landroidx/media3/common/text/Cue;->g:I

    .line 31
    .line 32
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 33
    .line 34
    iget v1, p0, Landroidx/media3/common/text/Cue;->h:F

    .line 35
    .line 36
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 37
    .line 38
    iget v1, p0, Landroidx/media3/common/text/Cue;->i:I

    .line 39
    .line 40
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 41
    .line 42
    iget v1, p0, Landroidx/media3/common/text/Cue;->n:I

    .line 43
    .line 44
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->j:I

    .line 45
    .line 46
    iget v1, p0, Landroidx/media3/common/text/Cue;->o:F

    .line 47
    .line 48
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->k:F

    .line 49
    .line 50
    iget v1, p0, Landroidx/media3/common/text/Cue;->j:F

    .line 51
    .line 52
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->l:F

    .line 53
    .line 54
    iget v1, p0, Landroidx/media3/common/text/Cue;->k:F

    .line 55
    .line 56
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->m:F

    .line 57
    .line 58
    iget-boolean v1, p0, Landroidx/media3/common/text/Cue;->l:Z

    .line 59
    .line 60
    iput-boolean v1, v0, Landroidx/media3/common/text/Cue$Builder;->n:Z

    .line 61
    .line 62
    iget v1, p0, Landroidx/media3/common/text/Cue;->m:I

    .line 63
    .line 64
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->o:I

    .line 65
    .line 66
    iget v1, p0, Landroidx/media3/common/text/Cue;->p:I

    .line 67
    .line 68
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->p:I

    .line 69
    .line 70
    iget v1, p0, Landroidx/media3/common/text/Cue;->q:F

    .line 71
    .line 72
    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->q:F

    .line 73
    .line 74
    iget p0, p0, Landroidx/media3/common/text/Cue;->r:I

    .line 75
    .line 76
    iput p0, v0, Landroidx/media3/common/text/Cue$Builder;->r:I

    .line 77
    .line 78
    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 8
    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    sget-object v3, Landroidx/media3/common/text/Cue;->s:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    instance-of v3, v2, Landroid/text/Spanned;

    .line 17
    .line 18
    if-eqz v3, :cond_4

    .line 19
    .line 20
    check-cast v2, Landroid/text/Spanned;

    .line 21
    .line 22
    sget-object v3, Landroidx/media3/common/text/CustomSpanBundler;->a:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-class v5, Landroidx/media3/common/text/RubySpan;

    .line 34
    .line 35
    invoke-interface {v2, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, [Landroidx/media3/common/text/RubySpan;

    .line 40
    .line 41
    array-length v5, v4

    .line 42
    move v6, v1

    .line 43
    :goto_0
    if-ge v6, v5, :cond_0

    .line 44
    .line 45
    aget-object v7, v4, v6

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v8, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v9, Landroidx/media3/common/text/RubySpan;->c:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v10, v7, Landroidx/media3/common/text/RubySpan;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v9, Landroidx/media3/common/text/RubySpan;->d:Ljava/lang/String;

    .line 63
    .line 64
    iget v10, v7, Landroidx/media3/common/text/RubySpan;->b:I

    .line 65
    .line 66
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    invoke-static {v2, v7, v9, v8}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const-class v5, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 85
    .line 86
    invoke-interface {v2, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, [Landroidx/media3/common/text/TextEmphasisSpan;

    .line 91
    .line 92
    array-length v5, v4

    .line 93
    move v6, v1

    .line 94
    :goto_1
    if-ge v6, v5, :cond_1

    .line 95
    .line 96
    aget-object v7, v4, v6

    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v8, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->d:Ljava/lang/String;

    .line 107
    .line 108
    iget v10, v7, Landroidx/media3/common/text/TextEmphasisSpan;->a:I

    .line 109
    .line 110
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->e:Ljava/lang/String;

    .line 114
    .line 115
    iget v10, v7, Landroidx/media3/common/text/TextEmphasisSpan;->b:I

    .line 116
    .line 117
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->f:Ljava/lang/String;

    .line 121
    .line 122
    iget v10, v7, Landroidx/media3/common/text/TextEmphasisSpan;->c:I

    .line 123
    .line 124
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const/4 v9, 0x2

    .line 128
    invoke-static {v2, v7, v9, v8}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    const-class v5, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 143
    .line 144
    invoke-interface {v2, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, [Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 149
    .line 150
    array-length v5, v4

    .line 151
    move v6, v1

    .line 152
    :goto_2
    if-ge v6, v5, :cond_2

    .line 153
    .line 154
    aget-object v7, v4, v6

    .line 155
    .line 156
    const/4 v8, 0x3

    .line 157
    const/4 v9, 0x0

    .line 158
    invoke-static {v2, v7, v8, v9}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    add-int/lit8 v6, v6, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    const-class v5, Landroidx/media3/common/text/VoiceSpan;

    .line 173
    .line 174
    invoke-interface {v2, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, [Landroidx/media3/common/text/VoiceSpan;

    .line 179
    .line 180
    array-length v5, v4

    .line 181
    move v6, v1

    .line 182
    :goto_3
    if-ge v6, v5, :cond_3

    .line 183
    .line 184
    aget-object v7, v4, v6

    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance v8, Landroid/os/Bundle;

    .line 190
    .line 191
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 192
    .line 193
    .line 194
    sget-object v9, Landroidx/media3/common/text/VoiceSpan;->b:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v10, v7, Landroidx/media3/common/text/VoiceSpan;->a:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const/4 v9, 0x4

    .line 202
    invoke-static {v2, v7, v9, v8}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    add-int/lit8 v6, v6, 0x1

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_4

    .line 217
    .line 218
    sget-object v2, Landroidx/media3/common/text/Cue;->t:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    sget-object v2, Landroidx/media3/common/text/Cue;->u:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v3, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 226
    .line 227
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 228
    .line 229
    .line 230
    sget-object v2, Landroidx/media3/common/text/Cue;->v:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v3, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    .line 233
    .line 234
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 235
    .line 236
    .line 237
    sget-object v2, Landroidx/media3/common/text/Cue;->y:Ljava/lang/String;

    .line 238
    .line 239
    iget v3, p0, Landroidx/media3/common/text/Cue;->e:F

    .line 240
    .line 241
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 242
    .line 243
    .line 244
    sget-object v2, Landroidx/media3/common/text/Cue;->z:Ljava/lang/String;

    .line 245
    .line 246
    iget v3, p0, Landroidx/media3/common/text/Cue;->f:I

    .line 247
    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    sget-object v2, Landroidx/media3/common/text/Cue;->A:Ljava/lang/String;

    .line 252
    .line 253
    iget v3, p0, Landroidx/media3/common/text/Cue;->g:I

    .line 254
    .line 255
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    sget-object v2, Landroidx/media3/common/text/Cue;->B:Ljava/lang/String;

    .line 259
    .line 260
    iget v3, p0, Landroidx/media3/common/text/Cue;->h:F

    .line 261
    .line 262
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 263
    .line 264
    .line 265
    sget-object v2, Landroidx/media3/common/text/Cue;->C:Ljava/lang/String;

    .line 266
    .line 267
    iget v3, p0, Landroidx/media3/common/text/Cue;->i:I

    .line 268
    .line 269
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    sget-object v2, Landroidx/media3/common/text/Cue;->D:Ljava/lang/String;

    .line 273
    .line 274
    iget v3, p0, Landroidx/media3/common/text/Cue;->n:I

    .line 275
    .line 276
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    sget-object v2, Landroidx/media3/common/text/Cue;->E:Ljava/lang/String;

    .line 280
    .line 281
    iget v3, p0, Landroidx/media3/common/text/Cue;->o:F

    .line 282
    .line 283
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 284
    .line 285
    .line 286
    sget-object v2, Landroidx/media3/common/text/Cue;->F:Ljava/lang/String;

    .line 287
    .line 288
    iget v3, p0, Landroidx/media3/common/text/Cue;->j:F

    .line 289
    .line 290
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 291
    .line 292
    .line 293
    sget-object v2, Landroidx/media3/common/text/Cue;->G:Ljava/lang/String;

    .line 294
    .line 295
    iget v3, p0, Landroidx/media3/common/text/Cue;->k:F

    .line 296
    .line 297
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 298
    .line 299
    .line 300
    sget-object v2, Landroidx/media3/common/text/Cue;->I:Ljava/lang/String;

    .line 301
    .line 302
    iget-boolean v3, p0, Landroidx/media3/common/text/Cue;->l:Z

    .line 303
    .line 304
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    .line 306
    .line 307
    sget-object v2, Landroidx/media3/common/text/Cue;->H:Ljava/lang/String;

    .line 308
    .line 309
    iget v3, p0, Landroidx/media3/common/text/Cue;->m:I

    .line 310
    .line 311
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 312
    .line 313
    .line 314
    sget-object v2, Landroidx/media3/common/text/Cue;->J:Ljava/lang/String;

    .line 315
    .line 316
    iget v3, p0, Landroidx/media3/common/text/Cue;->p:I

    .line 317
    .line 318
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    sget-object v2, Landroidx/media3/common/text/Cue;->K:Ljava/lang/String;

    .line 322
    .line 323
    iget v3, p0, Landroidx/media3/common/text/Cue;->q:F

    .line 324
    .line 325
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 326
    .line 327
    .line 328
    sget-object v2, Landroidx/media3/common/text/Cue;->L:Ljava/lang/String;

    .line 329
    .line 330
    iget v3, p0, Landroidx/media3/common/text/Cue;->r:I

    .line 331
    .line 332
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 333
    .line 334
    .line 335
    iget-object p0, p0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 336
    .line 337
    if-eqz p0, :cond_5

    .line 338
    .line 339
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 340
    .line 341
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    .line 343
    .line 344
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 345
    .line 346
    invoke-virtual {p0, v3, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 347
    .line 348
    .line 349
    move-result p0

    .line 350
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 351
    .line 352
    .line 353
    sget-object p0, Landroidx/media3/common/text/Cue;->x:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 360
    .line 361
    .line 362
    :cond_5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const-class v0, Landroidx/media3/common/text/Cue;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/common/text/Cue;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-object v1, p1, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 30
    .line 31
    iget-object v1, p1, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    .line 36
    .line 37
    iget-object v1, p1, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    .line 38
    .line 39
    if-ne v0, v1, :cond_3

    .line 40
    .line 41
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    :goto_0
    iget v0, p0, Landroidx/media3/common/text/Cue;->e:F

    .line 59
    .line 60
    iget v1, p1, Landroidx/media3/common/text/Cue;->e:F

    .line 61
    .line 62
    cmpl-float v0, v0, v1

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget v0, p0, Landroidx/media3/common/text/Cue;->f:I

    .line 67
    .line 68
    iget v1, p1, Landroidx/media3/common/text/Cue;->f:I

    .line 69
    .line 70
    if-ne v0, v1, :cond_3

    .line 71
    .line 72
    iget v0, p0, Landroidx/media3/common/text/Cue;->g:I

    .line 73
    .line 74
    iget v1, p1, Landroidx/media3/common/text/Cue;->g:I

    .line 75
    .line 76
    if-ne v0, v1, :cond_3

    .line 77
    .line 78
    iget v0, p0, Landroidx/media3/common/text/Cue;->h:F

    .line 79
    .line 80
    iget v1, p1, Landroidx/media3/common/text/Cue;->h:F

    .line 81
    .line 82
    cmpl-float v0, v0, v1

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iget v0, p0, Landroidx/media3/common/text/Cue;->i:I

    .line 87
    .line 88
    iget v1, p1, Landroidx/media3/common/text/Cue;->i:I

    .line 89
    .line 90
    if-ne v0, v1, :cond_3

    .line 91
    .line 92
    iget v0, p0, Landroidx/media3/common/text/Cue;->j:F

    .line 93
    .line 94
    iget v1, p1, Landroidx/media3/common/text/Cue;->j:F

    .line 95
    .line 96
    cmpl-float v0, v0, v1

    .line 97
    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    iget v0, p0, Landroidx/media3/common/text/Cue;->k:F

    .line 101
    .line 102
    iget v1, p1, Landroidx/media3/common/text/Cue;->k:F

    .line 103
    .line 104
    cmpl-float v0, v0, v1

    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    iget-boolean v0, p0, Landroidx/media3/common/text/Cue;->l:Z

    .line 109
    .line 110
    iget-boolean v1, p1, Landroidx/media3/common/text/Cue;->l:Z

    .line 111
    .line 112
    if-ne v0, v1, :cond_3

    .line 113
    .line 114
    iget v0, p0, Landroidx/media3/common/text/Cue;->m:I

    .line 115
    .line 116
    iget v1, p1, Landroidx/media3/common/text/Cue;->m:I

    .line 117
    .line 118
    if-ne v0, v1, :cond_3

    .line 119
    .line 120
    iget v0, p0, Landroidx/media3/common/text/Cue;->n:I

    .line 121
    .line 122
    iget v1, p1, Landroidx/media3/common/text/Cue;->n:I

    .line 123
    .line 124
    if-ne v0, v1, :cond_3

    .line 125
    .line 126
    iget v0, p0, Landroidx/media3/common/text/Cue;->o:F

    .line 127
    .line 128
    iget v1, p1, Landroidx/media3/common/text/Cue;->o:F

    .line 129
    .line 130
    cmpl-float v0, v0, v1

    .line 131
    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    iget v0, p0, Landroidx/media3/common/text/Cue;->p:I

    .line 135
    .line 136
    iget v1, p1, Landroidx/media3/common/text/Cue;->p:I

    .line 137
    .line 138
    if-ne v0, v1, :cond_3

    .line 139
    .line 140
    iget v0, p0, Landroidx/media3/common/text/Cue;->q:F

    .line 141
    .line 142
    iget v1, p1, Landroidx/media3/common/text/Cue;->q:F

    .line 143
    .line 144
    cmpl-float v0, v0, v1

    .line 145
    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    iget p0, p0, Landroidx/media3/common/text/Cue;->r:I

    .line 149
    .line 150
    iget p1, p1, Landroidx/media3/common/text/Cue;->r:I

    .line 151
    .line 152
    if-ne p0, p1, :cond_3

    .line 153
    .line 154
    :goto_1
    const/4 p0, 0x1

    .line 155
    return p0

    .line 156
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 157
    return p0
.end method

.method public final hashCode()I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/common/text/Cue;->e:F

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    iget v1, v0, Landroidx/media3/common/text/Cue;->f:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    iget v1, v0, Landroidx/media3/common/text/Cue;->g:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    iget v1, v0, Landroidx/media3/common/text/Cue;->h:F

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    iget v1, v0, Landroidx/media3/common/text/Cue;->i:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    iget v1, v0, Landroidx/media3/common/text/Cue;->j:F

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    iget v1, v0, Landroidx/media3/common/text/Cue;->k:F

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    iget-boolean v1, v0, Landroidx/media3/common/text/Cue;->l:Z

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    iget v1, v0, Landroidx/media3/common/text/Cue;->m:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    iget v1, v0, Landroidx/media3/common/text/Cue;->n:I

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    iget v1, v0, Landroidx/media3/common/text/Cue;->o:F

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    iget v1, v0, Landroidx/media3/common/text/Cue;->p:I

    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v17

    .line 75
    iget v1, v0, Landroidx/media3/common/text/Cue;->q:F

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object v18

    .line 81
    iget v1, v0, Landroidx/media3/common/text/Cue;->r:I

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v19

    .line 87
    iget-object v2, v0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 88
    .line 89
    iget-object v3, v0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 90
    .line 91
    iget-object v4, v0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    .line 92
    .line 93
    iget-object v5, v0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 94
    .line 95
    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    return v0
.end method
