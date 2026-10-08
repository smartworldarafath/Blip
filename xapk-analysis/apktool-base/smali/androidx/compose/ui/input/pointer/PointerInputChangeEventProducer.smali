.class final Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    }
.end annotation


# instance fields
.field public final a:Landroidx/collection/LongSparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->a:Landroidx/collection/LongSparseArray;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .locals 41

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Landroidx/collection/LongSparseArray;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {v1, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge v5, v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 26
    .line 27
    iget-wide v7, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->a:J

    .line 28
    .line 29
    move-object/from16 v9, p0

    .line 30
    .line 31
    iget-object v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->a:Landroidx/collection/LongSparseArray;

    .line 32
    .line 33
    invoke-virtual {v10, v7, v8}, Landroidx/collection/LongSparseArray;->b(J)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 38
    .line 39
    if-nez v11, :cond_0

    .line 40
    .line 41
    iget-wide v11, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->b:J

    .line 42
    .line 43
    iget-wide v13, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->d:J

    .line 44
    .line 45
    move/from16 v16, v5

    .line 46
    .line 47
    move-wide/from16 v26, v11

    .line 48
    .line 49
    move-wide/from16 v28, v13

    .line 50
    .line 51
    const/16 v30, 0x0

    .line 52
    .line 53
    move-object/from16 v11, p2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    iget-wide v12, v11, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->a:J

    .line 57
    .line 58
    iget-boolean v14, v11, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->c:Z

    .line 59
    .line 60
    move/from16 v16, v5

    .line 61
    .line 62
    iget-wide v4, v11, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->b:J

    .line 63
    .line 64
    move-object/from16 v11, p2

    .line 65
    .line 66
    invoke-virtual {v11, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->G(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    move-wide/from16 v28, v4

    .line 71
    .line 72
    move-wide/from16 v26, v12

    .line 73
    .line 74
    move/from16 v30, v14

    .line 75
    .line 76
    :goto_1
    iget-wide v4, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->a:J

    .line 77
    .line 78
    new-instance v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 79
    .line 80
    iget-wide v12, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->b:J

    .line 81
    .line 82
    move-object v14, v2

    .line 83
    move/from16 v40, v3

    .line 84
    .line 85
    iget-wide v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->d:J

    .line 86
    .line 87
    iget-boolean v15, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->e:Z

    .line 88
    .line 89
    move-wide/from16 v22, v2

    .line 90
    .line 91
    iget v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->f:F

    .line 92
    .line 93
    iget v3, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->g:I

    .line 94
    .line 95
    move/from16 v25, v2

    .line 96
    .line 97
    iget-object v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->i:Ljava/util/ArrayList;

    .line 98
    .line 99
    move-object/from16 v32, v2

    .line 100
    .line 101
    move/from16 v31, v3

    .line 102
    .line 103
    iget-wide v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->j:J

    .line 104
    .line 105
    move-wide/from16 v33, v2

    .line 106
    .line 107
    iget v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->k:F

    .line 108
    .line 109
    move/from16 v35, v2

    .line 110
    .line 111
    iget-wide v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->l:J

    .line 112
    .line 113
    move-wide/from16 v36, v2

    .line 114
    .line 115
    iget-wide v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->m:J

    .line 116
    .line 117
    move-wide/from16 v38, v2

    .line 118
    .line 119
    move-wide/from16 v18, v4

    .line 120
    .line 121
    move-wide/from16 v20, v12

    .line 122
    .line 123
    move/from16 v24, v15

    .line 124
    .line 125
    invoke-direct/range {v17 .. v39}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZILjava/util/ArrayList;JFJJ)V

    .line 126
    .line 127
    .line 128
    move-object/from16 v4, v17

    .line 129
    .line 130
    move-wide/from16 v2, v18

    .line 131
    .line 132
    invoke-virtual {v1, v2, v3, v4}, Landroidx/collection/LongSparseArray;->d(JLjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-boolean v2, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->e:Z

    .line 136
    .line 137
    if-eqz v2, :cond_1

    .line 138
    .line 139
    new-instance v17, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 140
    .line 141
    iget-wide v3, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->b:J

    .line 142
    .line 143
    iget-wide v5, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->c:J

    .line 144
    .line 145
    move/from16 v22, v2

    .line 146
    .line 147
    move-wide/from16 v18, v3

    .line 148
    .line 149
    move-wide/from16 v20, v5

    .line 150
    .line 151
    invoke-direct/range {v17 .. v22}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;-><init>(JJZ)V

    .line 152
    .line 153
    .line 154
    move-object/from16 v2, v17

    .line 155
    .line 156
    invoke-virtual {v10, v7, v8, v2}, Landroidx/collection/LongSparseArray;->d(JLjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_1
    invoke-virtual {v10, v7, v8}, Landroidx/collection/LongSparseArray;->e(J)V

    .line 161
    .line 162
    .line 163
    :goto_2
    add-int/lit8 v5, v16, 0x1

    .line 164
    .line 165
    move-object v2, v14

    .line 166
    move/from16 v3, v40

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_2
    new-instance v2, Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 171
    .line 172
    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;-><init>(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V

    .line 173
    .line 174
    .line 175
    return-object v2
.end method
