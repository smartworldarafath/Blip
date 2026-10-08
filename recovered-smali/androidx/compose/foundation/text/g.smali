.class public final synthetic Landroidx/compose/foundation/text/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroidx/compose/foundation/text/g;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/compose/foundation/text/g;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/foundation/text/g;->l:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/foundation/text/LinksTextMeasurePolicy;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/text/g;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/g;->k:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/text/g;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/g;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/text/g;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/g;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 13
    .line 14
    check-cast v2, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 15
    .line 16
    iget-object v0, v2, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->b:Landroidx/compose/runtime/MutableIntState;

    .line 17
    .line 18
    check-cast p1, Landroidx/compose/foundation/text/TextAnnotatorScope;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, v3, Landroidx/compose/ui/text/TextLinkStyles;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v3, v4

    .line 35
    :goto_0
    move-object v5, v0

    .line 36
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    and-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->b:Landroidx/compose/ui/text/SpanStyle;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v5, v4

    .line 56
    :goto_1
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/SpanStyle;->c(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :cond_2
    move-object v3, v0

    .line 63
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    and-int/lit8 v3, v3, 0x2

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    iget-object v3, v3, Landroidx/compose/ui/text/TextLinkStyles;->c:Landroidx/compose/ui/text/SpanStyle;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move-object v3, v4

    .line 83
    :goto_2
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/SpanStyle;->c(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_4
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    and-int/lit8 v0, v0, 0x4

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object v4, v0, Landroidx/compose/ui/text/TextLinkStyles;->d:Landroidx/compose/ui/text/SpanStyle;

    .line 106
    .line 107
    :cond_5
    if-eqz v3, :cond_6

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/SpanStyle;->c(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    :cond_6
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v2, p1, Landroidx/compose/foundation/text/TextAnnotatorScope;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 119
    .line 120
    new-instance v3, Lp2;

    .line 121
    .line 122
    const/16 v5, 0x10

    .line 123
    .line 124
    invoke-direct {v3, v0, p0, v4, v5}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/AnnotatedString;->c(Lp2;)Landroidx/compose/ui/text/AnnotatedString;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    iput-object p0, p1, Landroidx/compose/foundation/text/TextAnnotatorScope;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 132
    .line 133
    return-object v1

    .line 134
    :pswitch_0
    check-cast p0, Ljava/util/List;

    .line 135
    .line 136
    check-cast v2, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    .line 137
    .line 138
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 139
    .line 140
    iget-object v0, v2, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;->a:Lkotlin/jvm/functions/Function0;

    .line 141
    .line 142
    invoke-static {p0, v0}, Landroidx/compose/foundation/text/BasicTextKt;->d(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    if-eqz p0, :cond_8

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/4 v2, 0x0

    .line 153
    :goto_3
    if-ge v2, v0, :cond_8

    .line 154
    .line 155
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Lkotlin/Pair;

    .line 160
    .line 161
    iget-object v4, v3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 164
    .line 165
    iget-object v3, v3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 168
    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Landroidx/compose/ui/unit/IntOffset;

    .line 176
    .line 177
    iget-wide v5, v3, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    const-wide/16 v5, 0x0

    .line 181
    .line 182
    :goto_4
    invoke-static {p1, v4, v5, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->h(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_8
    return-object v1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
