.class public final synthetic Lnb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/text/MultiParagraphIntrinsics;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnb;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lnb;->k:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lnb;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object p0, p0, Lnb;->k:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sub-int/2addr v3, v4

    .line 41
    if-gt v4, v3, :cond_2

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object v6, v5

    .line 48
    check-cast v6, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 49
    .line 50
    iget-object v6, v6, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 51
    .line 52
    iget-object v6, v6, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-gez v7, :cond_1

    .line 63
    .line 64
    move-object v0, v5

    .line 65
    move v2, v6

    .line 66
    :cond_1
    if-eq v4, v3, :cond_2

    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v3, v0

    .line 72
    :goto_1
    check-cast v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    iget-object p0, v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 77
    .line 78
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v2, v0

    .line 103
    check-cast v2, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 104
    .line 105
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b()F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    sub-int/2addr v3, v4

    .line 116
    if-gt v4, v3, :cond_6

    .line 117
    .line 118
    :goto_2
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    move-object v6, v5

    .line 123
    check-cast v6, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 124
    .line 125
    iget-object v6, v6, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 126
    .line 127
    invoke-virtual {v6}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b()F

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-gez v7, :cond_5

    .line 136
    .line 137
    move-object v0, v5

    .line 138
    move v2, v6

    .line 139
    :cond_5
    if-eq v4, v3, :cond_6

    .line 140
    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    move-object v3, v0

    .line 145
    :goto_3
    check-cast v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 146
    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    iget-object p0, v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b()F

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    :cond_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
