.class final Landroidx/datastore/preferences/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final n:[I

.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/datastore/preferences/protobuf/MessageLite;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

.field public final k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field public final l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

.field public final m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:[I

    .line 5
    .line 6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->i()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->c:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->d:I

    .line 11
    .line 12
    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    .line 15
    .line 16
    iput-object p6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->g:[I

    .line 17
    .line 18
    iput p7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->h:I

    .line 19
    .line 20
    iput p8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->i:I

    .line 21
    .line 22
    iput-object p9, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->j:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 23
    .line 24
    iput-object p10, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 25
    .line 26
    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 27
    .line 28
    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->e:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 29
    .line 30
    iput-object p13, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 31
    .line 32
    return-void
.end method

.method public static F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Field "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " for "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, " not found. Known fields are "

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public static K(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    ushr-int/lit8 p0, p0, 0x14

    .line 5
    .line 6
    return p0
.end method

.method public static p(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->i()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static w(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .locals 34

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    .line 7
    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 24
    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    .line 25
    :goto_a
    sget-object v14, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 26
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->c:[Ljava/lang/Object;

    const/16 v18, 0x1

    .line 27
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    mul-int/lit8 v8, v11, 0x3

    .line 29
    new-array v8, v8, [I

    mul-int/lit8 v11, v11, 0x2

    .line 30
    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_34

    add-int/lit8 v24, v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_15

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v6, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v6, v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_17

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v6, v26

    or-int/2addr v2, v3

    move/from16 v6, v28

    :cond_18
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v20, 0x1

    .line 35
    aput v21, v15, v20

    move/from16 v20, v4

    .line 36
    :cond_19
    sget-object v4, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->j:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move/from16 v28, v7

    const/16 v7, 0x33

    move-object/from16 v30, v8

    if-lt v3, v7, :cond_22

    add-int/lit8 v7, v6, 0x1

    .line 37
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v8, 0xd800

    if-lt v6, v8, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    const/16 v32, 0xd

    :goto_f
    add-int/lit8 v33, v7, 0x1

    .line 38
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_1a

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v32

    or-int/2addr v6, v7

    add-int/lit8 v32, v32, 0xd

    move/from16 v7, v33

    const v8, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v7, v7, v32

    or-int/2addr v6, v7

    move/from16 v7, v33

    :cond_1b
    add-int/lit8 v8, v3, -0x33

    move/from16 v32, v6

    const/16 v6, 0x9

    if-eq v8, v6, :cond_1e

    const/16 v6, 0x11

    if-ne v8, v6, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v6, 0xc

    if-ne v8, v6, :cond_1f

    .line 39
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_1f

    .line 40
    :cond_1d
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v10, 0x1

    aget-object v8, v24, v10

    aput-object v8, v11, v4

    :goto_10
    move v10, v6

    goto :goto_12

    .line 41
    :cond_1e
    :goto_11
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v10, 0x1

    aget-object v8, v24, v10

    aput-object v8, v11, v4

    goto :goto_10

    :cond_1f
    :goto_12
    mul-int/lit8 v6, v32, 0x2

    .line 42
    aget-object v4, v24, v6

    .line 43
    instance-of v8, v4, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_20

    .line 44
    check-cast v4, Ljava/lang/reflect/Field;

    :goto_13
    move/from16 v29, v6

    move v8, v7

    goto :goto_14

    .line 45
    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 46
    aput-object v4, v24, v6

    goto :goto_13

    .line 47
    :goto_14
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v4, v6

    add-int/lit8 v6, v29, 0x1

    .line 48
    aget-object v7, v24, v6

    move/from16 v29, v4

    .line 49
    instance-of v4, v7, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_21

    .line 50
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 51
    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 52
    aput-object v7, v24, v6

    .line 53
    :goto_15
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v4, v6

    move/from16 v25, v10

    const/4 v6, 0x0

    move-object v10, v5

    move v5, v4

    move/from16 v4, v29

    move/from16 v29, v8

    goto/16 :goto_21

    :cond_22
    add-int/lit8 v7, v10, 0x1

    .line 54
    aget-object v8, v24, v10

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move/from16 v32, v7

    const/16 v7, 0x9

    if-eq v3, v7, :cond_2a

    const/16 v7, 0x11

    if-ne v3, v7, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v7, 0x1b

    if-eq v3, v7, :cond_29

    const/16 v7, 0x31

    if-ne v3, v7, :cond_24

    goto :goto_19

    :cond_24
    const/16 v7, 0xc

    if-eq v3, v7, :cond_27

    const/16 v7, 0x1e

    if-eq v3, v7, :cond_27

    const/16 v7, 0x2c

    if-ne v3, v7, :cond_25

    goto :goto_17

    :cond_25
    const/16 v4, 0x32

    if-ne v3, v4, :cond_2b

    add-int/lit8 v4, v22, 0x1

    .line 55
    aput v21, v15, v22

    .line 56
    div-int/lit8 v7, v21, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v22, v10, 0x2

    aget-object v29, v24, v32

    aput-object v29, v11, v7

    move/from16 v29, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_26

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v10, 0x3

    .line 57
    aget-object v10, v24, v22

    aput-object v10, v11, v7

    :goto_16
    move/from16 v22, v29

    goto :goto_1b

    :cond_26
    move/from16 v4, v22

    goto :goto_16

    .line 58
    :cond_27
    :goto_17
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v7

    if-eq v7, v4, :cond_28

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2b

    .line 59
    :cond_28
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v7, v24, v32

    aput-object v7, v11, v4

    :goto_18
    move v4, v10

    goto :goto_1b

    .line 60
    :cond_29
    :goto_19
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v7, v24, v32

    aput-object v7, v11, v4

    goto :goto_18

    .line 61
    :cond_2a
    :goto_1a
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v11, v4

    :cond_2b
    move/from16 v4, v32

    .line 62
    :goto_1b
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    and-int/lit16 v8, v2, 0x1000

    if-eqz v8, :cond_2f

    const/16 v8, 0x11

    if-gt v3, v8, :cond_2f

    add-int/lit8 v8, v6, 0x1

    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v10, 0xd800

    if-lt v6, v10, :cond_2d

    and-int/lit16 v6, v6, 0x1fff

    const/16 v25, 0xd

    :goto_1c
    add-int/lit8 v29, v8, 0x1

    .line 64
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v10, :cond_2c

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v25

    or-int/2addr v6, v8

    add-int/lit8 v25, v25, 0xd

    move/from16 v8, v29

    goto :goto_1c

    :cond_2c
    shl-int v8, v8, v25

    or-int/2addr v6, v8

    goto :goto_1d

    :cond_2d
    move/from16 v29, v8

    :goto_1d
    mul-int/lit8 v8, v28, 0x2

    .line 65
    div-int/lit8 v25, v6, 0x20

    add-int v25, v25, v8

    .line 66
    aget-object v8, v24, v25

    .line 67
    instance-of v10, v8, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_2e

    .line 68
    check-cast v8, Ljava/lang/reflect/Field;

    :goto_1e
    move/from16 v25, v4

    move-object v10, v5

    goto :goto_1f

    .line 69
    :cond_2e
    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 70
    aput-object v8, v24, v25

    goto :goto_1e

    .line 71
    :goto_1f
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 72
    rem-int/lit8 v6, v6, 0x20

    goto :goto_20

    :cond_2f
    move/from16 v25, v4

    move-object v10, v5

    const v4, 0xfffff

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_20
    const/16 v5, 0x12

    if-lt v3, v5, :cond_30

    const/16 v5, 0x31

    if-gt v3, v5, :cond_30

    add-int/lit8 v5, v23, 0x1

    .line 73
    aput v7, v15, v23

    move/from16 v23, v5

    :cond_30
    move v5, v4

    move v4, v7

    :goto_21
    add-int/lit8 v7, v21, 0x1

    .line 74
    aput v26, v30, v21

    add-int/lit8 v8, v21, 0x2

    move-object/from16 v26, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_31

    const/high16 v1, 0x20000000

    goto :goto_22

    :cond_31
    const/4 v1, 0x0

    :goto_22
    move/from16 v31, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_32

    const/high16 v1, 0x10000000

    goto :goto_23

    :cond_32
    const/4 v1, 0x0

    :goto_23
    or-int v1, v31, v1

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_33

    const/high16 v2, -0x80000000

    goto :goto_24

    :cond_33
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    .line 75
    aput v1, v30, v7

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v5

    .line 76
    aput v1, v30, v8

    move-object v5, v10

    move-object/from16 v3, v24

    move/from16 v10, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v7, v28

    move/from16 v4, v29

    move-object/from16 v8, v30

    const v6, 0xd800

    goto/16 :goto_b

    :cond_34
    move-object/from16 v30, v8

    .line 77
    new-instance v1, Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 78
    iget-object v14, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a:Landroidx/datastore/preferences/protobuf/MessageLite;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v30

    move-object v9, v1

    .line 79
    invoke-direct/range {v9 .. v22}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    return-object v9
.end method

.method public static x(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public static y(JLjava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static z(JLjava/lang/Object;)J
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method


# virtual methods
.method public final A(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->c:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->d:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_2

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    div-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-gt v1, v0, :cond_2

    .line 18
    .line 19
    add-int v2, v0, v1

    .line 20
    .line 21
    ushr-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    mul-int/lit8 v3, v2, 0x3

    .line 24
    .line 25
    aget v4, p0, v3

    .line 26
    .line 27
    if-ne p1, v4, :cond_0

    .line 28
    .line 29
    return v3

    .line 30
    :cond_0
    if-ge p1, v4, :cond_1

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, -0x1

    .line 41
    return p0
.end method

.method public final B(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 2
    .line 3
    check-cast p0, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 10
    .line 11
    iget p2, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    .line 12
    .line 13
    and-int/lit8 p3, p2, 0x7

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p3, v0, :cond_3

    .line 17
    .line 18
    :cond_0
    invoke-interface {p5}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p4, p3, p5, p6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p5, p3}, Landroidx/datastore/preferences/protobuf/Schema;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    iget p3, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->u()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eq p3, p2, :cond_0

    .line 47
    .line 48
    iput p3, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void

    .line 51
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0
.end method

.method public final C(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 7
    .line 8
    check-cast p0, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p1, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 15
    .line 16
    iget p2, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b:I

    .line 17
    .line 18
    and-int/lit8 v0, p2, 0x7

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    :cond_0
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p3, v0, p4, p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p4, v0}, Landroidx/datastore/preferences/protobuf/Schema;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget v0, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->u()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eq v0, p2, :cond_0

    .line 52
    .line 53
    iput v0, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d:I

    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void

    .line 56
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0
.end method

.method public final D(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    const v2, 0xfffff

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    and-int p0, p1, v2

    .line 11
    .line 12
    int-to-long p0, p0

    .line 13
    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->t()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p3, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    and-int p0, p1, v2

    .line 31
    .line 32
    int-to-long p0, p0

    .line 33
    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->s()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p3, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    and-int p0, p1, v2

    .line 47
    .line 48
    int-to-long p0, p0

    .line 49
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->e()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p3, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final E(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    const v3, 0xfffff

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    and-int/2addr p1, v3

    .line 19
    int-to-long v0, p1

    .line 20
    check-cast p0, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p2, p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->s(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    and-int/2addr p1, v3

    .line 31
    int-to-long v2, p1

    .line 32
    check-cast p0, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 33
    .line 34
    invoke-virtual {p0, v2, v3, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p2, p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->s(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final G(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    shl-int p0, p1, p0

    .line 24
    .line 25
    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    or-int/2addr p0, p1

    .line 32
    invoke-static {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final H(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p1, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final I(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final J(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final L(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final M(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 8
    .line 9
    array-length v8, v7

    .line 10
    sget-object v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 11
    .line 12
    const v10, 0xfffff

    .line 13
    .line 14
    .line 15
    move v3, v10

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v2, v8, :cond_a

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    aget v12, v7, v2

    .line 25
    .line 26
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    const/16 v14, 0x11

    .line 31
    .line 32
    const/4 v15, 0x1

    .line 33
    if-gt v13, v14, :cond_2

    .line 34
    .line 35
    add-int/lit8 v14, v2, 0x2

    .line 36
    .line 37
    aget v14, v7, v14

    .line 38
    .line 39
    and-int v11, v14, v10

    .line 40
    .line 41
    if-eq v11, v3, :cond_1

    .line 42
    .line 43
    if-ne v11, v10, :cond_0

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    int-to-long v3, v11

    .line 48
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    move v4, v3

    .line 53
    :goto_1
    move v3, v11

    .line 54
    :cond_1
    ushr-int/lit8 v11, v14, 0x14

    .line 55
    .line 56
    shl-int v11, v15, v11

    .line 57
    .line 58
    move/from16 v21, v11

    .line 59
    .line 60
    move v11, v5

    .line 61
    move/from16 v5, v21

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v11, v5

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_2
    and-int/2addr v11, v10

    .line 67
    int-to-long v10, v11

    .line 68
    const/16 v16, 0x3f

    .line 69
    .line 70
    packed-switch v13, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_3
    const/4 v13, 0x0

    .line 74
    goto/16 :goto_d

    .line 75
    .line 76
    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    move-object v11, v6

    .line 91
    check-cast v11, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 92
    .line 93
    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    move-object v5, v6

    .line 108
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 109
    .line 110
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 111
    .line 112
    shl-long v17, v10, v15

    .line 113
    .line 114
    shr-long v10, v10, v16

    .line 115
    .line 116
    xor-long v10, v17, v10

    .line 117
    .line 118
    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IJ)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    move-object v10, v6

    .line 133
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 134
    .line 135
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 136
    .line 137
    shl-int/lit8 v11, v5, 0x1

    .line 138
    .line 139
    shr-int/lit8 v5, v5, 0x1f

    .line 140
    .line 141
    xor-int/2addr v5, v11

    .line 142
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(II)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_3

    .line 151
    .line 152
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v10

    .line 156
    move-object v5, v6

    .line 157
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 158
    .line 159
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 160
    .line 161
    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n(IJ)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_3

    .line 170
    .line 171
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    move-object v10, v6

    .line 176
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 177
    .line 178
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 179
    .line 180
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(II)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_3

    .line 189
    .line 190
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    move-object v10, v6

    .line 195
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 196
    .line 197
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 198
    .line 199
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p(II)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_3

    .line 209
    .line 210
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    move-object v10, v6

    .line 215
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 216
    .line 217
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 218
    .line 219
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(II)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_3

    .line 229
    .line 230
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 235
    .line 236
    move-object v10, v6

    .line 237
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 238
    .line 239
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 240
    .line 241
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_3

    .line 245
    .line 246
    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_3

    .line 251
    .line 252
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    move-object v11, v6

    .line 261
    check-cast v11, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 262
    .line 263
    iget-object v11, v11, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 264
    .line 265
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 266
    .line 267
    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_3

    .line 271
    .line 272
    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-eqz v5, :cond_3

    .line 277
    .line 278
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    instance-of v10, v5, Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v10, :cond_4

    .line 285
    .line 286
    check-cast v5, Ljava/lang/String;

    .line 287
    .line 288
    move-object v10, v6

    .line 289
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 290
    .line 291
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 292
    .line 293
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t(ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_4
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 299
    .line 300
    move-object v10, v6

    .line 301
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 302
    .line 303
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 304
    .line 305
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-eqz v5, :cond_3

    .line 315
    .line 316
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 317
    .line 318
    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    check-cast v5, Ljava/lang/Boolean;

    .line 323
    .line 324
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    move-object v10, v6

    .line 329
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 330
    .line 331
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 332
    .line 333
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h(IZ)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-eqz v5, :cond_3

    .line 343
    .line 344
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    move-object v10, v6

    .line 349
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 350
    .line 351
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 352
    .line 353
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(II)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-eqz v5, :cond_3

    .line 363
    .line 364
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 365
    .line 366
    .line 367
    move-result-wide v10

    .line 368
    move-object v5, v6

    .line 369
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 370
    .line 371
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 372
    .line 373
    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n(IJ)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-eqz v5, :cond_3

    .line 383
    .line 384
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    move-object v10, v6

    .line 389
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 390
    .line 391
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 392
    .line 393
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p(II)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_3

    .line 397
    .line 398
    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_3

    .line 403
    .line 404
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 405
    .line 406
    .line 407
    move-result-wide v10

    .line 408
    move-object v5, v6

    .line 409
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 410
    .line 411
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 412
    .line 413
    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IJ)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_3

    .line 417
    .line 418
    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_3

    .line 423
    .line 424
    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 425
    .line 426
    .line 427
    move-result-wide v10

    .line 428
    move-object v5, v6

    .line 429
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 430
    .line 431
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 432
    .line 433
    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IJ)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_3

    .line 437
    .line 438
    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_3

    .line 443
    .line 444
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 445
    .line 446
    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    check-cast v5, Ljava/lang/Float;

    .line 451
    .line 452
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    move-object v10, v6

    .line 457
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 458
    .line 459
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 460
    .line 461
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(II)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_3

    .line 472
    .line 473
    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-eqz v5, :cond_3

    .line 478
    .line 479
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 480
    .line 481
    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    check-cast v5, Ljava/lang/Double;

    .line 486
    .line 487
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 488
    .line 489
    .line 490
    move-result-wide v10

    .line 491
    move-object v5, v6

    .line 492
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 493
    .line 494
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 495
    .line 496
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 500
    .line 501
    .line 502
    move-result-wide v10

    .line 503
    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n(IJ)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_3

    .line 507
    .line 508
    :pswitch_12
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    if-eqz v5, :cond_5

    .line 513
    .line 514
    div-int/lit8 v10, v2, 0x3

    .line 515
    .line 516
    const/4 v11, 0x2

    .line 517
    mul-int/2addr v10, v11

    .line 518
    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    .line 519
    .line 520
    aget-object v10, v13, v10

    .line 521
    .line 522
    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 523
    .line 524
    check-cast v13, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 525
    .line 526
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    check-cast v10, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 530
    .line 531
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/MapEntryLite;->a:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 532
    .line 533
    iget-object v13, v10, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->b:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 534
    .line 535
    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 536
    .line 537
    check-cast v5, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 538
    .line 539
    move-object v14, v6

    .line 540
    check-cast v14, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 541
    .line 542
    iget-object v14, v14, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 543
    .line 544
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v16

    .line 559
    if-eqz v16, :cond_5

    .line 560
    .line 561
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v16

    .line 565
    check-cast v16, Ljava/util/Map$Entry;

    .line 566
    .line 567
    invoke-virtual {v14, v12, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v(II)V

    .line 568
    .line 569
    .line 570
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v11

    .line 574
    move/from16 v19, v3

    .line 575
    .line 576
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-static {v10, v15, v11}, Landroidx/datastore/preferences/protobuf/FieldSet;->a(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    .line 581
    .line 582
    .line 583
    move-result v11

    .line 584
    const/4 v15, 0x2

    .line 585
    invoke-static {v13, v15, v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->a(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    .line 586
    .line 587
    .line 588
    move-result v3

    .line 589
    add-int/2addr v11, v3

    .line 590
    invoke-virtual {v14, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(I)V

    .line 591
    .line 592
    .line 593
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v11

    .line 601
    move/from16 v18, v4

    .line 602
    .line 603
    const/4 v4, 0x1

    .line 604
    invoke-static {v14, v10, v4, v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->c(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    invoke-static {v14, v13, v15, v11}, Landroidx/datastore/preferences/protobuf/FieldSet;->c(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    move v11, v15

    .line 611
    move/from16 v4, v18

    .line 612
    .line 613
    move/from16 v3, v19

    .line 614
    .line 615
    const/4 v15, 0x1

    .line 616
    goto :goto_4

    .line 617
    :cond_5
    move/from16 v19, v3

    .line 618
    .line 619
    move/from16 v18, v4

    .line 620
    .line 621
    :cond_6
    :goto_5
    move/from16 v4, v18

    .line 622
    .line 623
    move/from16 v3, v19

    .line 624
    .line 625
    goto/16 :goto_3

    .line 626
    .line 627
    :pswitch_13
    move/from16 v19, v3

    .line 628
    .line 629
    move/from16 v18, v4

    .line 630
    .line 631
    aget v3, v7, v2

    .line 632
    .line 633
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    check-cast v4, Ljava/util/List;

    .line 638
    .line 639
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 644
    .line 645
    if-eqz v4, :cond_6

    .line 646
    .line 647
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 648
    .line 649
    .line 650
    move-result v10

    .line 651
    if-nez v10, :cond_6

    .line 652
    .line 653
    move-object v10, v6

    .line 654
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 655
    .line 656
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    const/4 v11, 0x0

    .line 660
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 661
    .line 662
    .line 663
    move-result v12

    .line 664
    if-ge v11, v12, :cond_6

    .line 665
    .line 666
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v12

    .line 670
    invoke-virtual {v10, v3, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 671
    .line 672
    .line 673
    add-int/lit8 v11, v11, 0x1

    .line 674
    .line 675
    goto :goto_6

    .line 676
    :pswitch_14
    move/from16 v19, v3

    .line 677
    .line 678
    move/from16 v18, v4

    .line 679
    .line 680
    aget v3, v7, v2

    .line 681
    .line 682
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    check-cast v4, Ljava/util/List;

    .line 687
    .line 688
    const/4 v5, 0x1

    .line 689
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->x(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 690
    .line 691
    .line 692
    goto :goto_5

    .line 693
    :pswitch_15
    move/from16 v19, v3

    .line 694
    .line 695
    move/from16 v18, v4

    .line 696
    .line 697
    move v5, v15

    .line 698
    aget v3, v7, v2

    .line 699
    .line 700
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    check-cast v4, Ljava/util/List;

    .line 705
    .line 706
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->w(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 707
    .line 708
    .line 709
    goto :goto_5

    .line 710
    :pswitch_16
    move/from16 v19, v3

    .line 711
    .line 712
    move/from16 v18, v4

    .line 713
    .line 714
    move v5, v15

    .line 715
    aget v3, v7, v2

    .line 716
    .line 717
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v4

    .line 721
    check-cast v4, Ljava/util/List;

    .line 722
    .line 723
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->v(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 724
    .line 725
    .line 726
    goto :goto_5

    .line 727
    :pswitch_17
    move/from16 v19, v3

    .line 728
    .line 729
    move/from16 v18, v4

    .line 730
    .line 731
    move v5, v15

    .line 732
    aget v3, v7, v2

    .line 733
    .line 734
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v4

    .line 738
    check-cast v4, Ljava/util/List;

    .line 739
    .line 740
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->u(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 741
    .line 742
    .line 743
    goto :goto_5

    .line 744
    :pswitch_18
    move/from16 v19, v3

    .line 745
    .line 746
    move/from16 v18, v4

    .line 747
    .line 748
    move v5, v15

    .line 749
    aget v3, v7, v2

    .line 750
    .line 751
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    check-cast v4, Ljava/util/List;

    .line 756
    .line 757
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->o(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 758
    .line 759
    .line 760
    goto/16 :goto_5

    .line 761
    .line 762
    :pswitch_19
    move/from16 v19, v3

    .line 763
    .line 764
    move/from16 v18, v4

    .line 765
    .line 766
    move v5, v15

    .line 767
    aget v3, v7, v2

    .line 768
    .line 769
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    check-cast v4, Ljava/util/List;

    .line 774
    .line 775
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_5

    .line 779
    .line 780
    :pswitch_1a
    move/from16 v19, v3

    .line 781
    .line 782
    move/from16 v18, v4

    .line 783
    .line 784
    move v5, v15

    .line 785
    aget v3, v7, v2

    .line 786
    .line 787
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    check-cast v4, Ljava/util/List;

    .line 792
    .line 793
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 794
    .line 795
    .line 796
    goto/16 :goto_5

    .line 797
    .line 798
    :pswitch_1b
    move/from16 v19, v3

    .line 799
    .line 800
    move/from16 v18, v4

    .line 801
    .line 802
    move v5, v15

    .line 803
    aget v3, v7, v2

    .line 804
    .line 805
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    check-cast v4, Ljava/util/List;

    .line 810
    .line 811
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 812
    .line 813
    .line 814
    goto/16 :goto_5

    .line 815
    .line 816
    :pswitch_1c
    move/from16 v19, v3

    .line 817
    .line 818
    move/from16 v18, v4

    .line 819
    .line 820
    move v5, v15

    .line 821
    aget v3, v7, v2

    .line 822
    .line 823
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    check-cast v4, Ljava/util/List;

    .line 828
    .line 829
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_5

    .line 833
    .line 834
    :pswitch_1d
    move/from16 v19, v3

    .line 835
    .line 836
    move/from16 v18, v4

    .line 837
    .line 838
    move v5, v15

    .line 839
    aget v3, v7, v2

    .line 840
    .line 841
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    check-cast v4, Ljava/util/List;

    .line 846
    .line 847
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->s(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 848
    .line 849
    .line 850
    goto/16 :goto_5

    .line 851
    .line 852
    :pswitch_1e
    move/from16 v19, v3

    .line 853
    .line 854
    move/from16 v18, v4

    .line 855
    .line 856
    move v5, v15

    .line 857
    aget v3, v7, v2

    .line 858
    .line 859
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v4

    .line 863
    check-cast v4, Ljava/util/List;

    .line 864
    .line 865
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_5

    .line 869
    .line 870
    :pswitch_1f
    move/from16 v19, v3

    .line 871
    .line 872
    move/from16 v18, v4

    .line 873
    .line 874
    move v5, v15

    .line 875
    aget v3, v7, v2

    .line 876
    .line 877
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    check-cast v4, Ljava/util/List;

    .line 882
    .line 883
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->t(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 884
    .line 885
    .line 886
    goto/16 :goto_5

    .line 887
    .line 888
    :pswitch_20
    move/from16 v19, v3

    .line 889
    .line 890
    move/from16 v18, v4

    .line 891
    .line 892
    move v5, v15

    .line 893
    aget v3, v7, v2

    .line 894
    .line 895
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v4

    .line 899
    check-cast v4, Ljava/util/List;

    .line 900
    .line 901
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->r(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_5

    .line 905
    .line 906
    :pswitch_21
    move/from16 v19, v3

    .line 907
    .line 908
    move/from16 v18, v4

    .line 909
    .line 910
    move v5, v15

    .line 911
    aget v3, v7, v2

    .line 912
    .line 913
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    check-cast v4, Ljava/util/List;

    .line 918
    .line 919
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->n(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 920
    .line 921
    .line 922
    goto/16 :goto_5

    .line 923
    .line 924
    :pswitch_22
    move/from16 v19, v3

    .line 925
    .line 926
    move/from16 v18, v4

    .line 927
    .line 928
    aget v3, v7, v2

    .line 929
    .line 930
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    check-cast v4, Ljava/util/List;

    .line 935
    .line 936
    const/4 v5, 0x0

    .line 937
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->x(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 938
    .line 939
    .line 940
    :goto_7
    move v13, v5

    .line 941
    :goto_8
    move/from16 v4, v18

    .line 942
    .line 943
    move/from16 v3, v19

    .line 944
    .line 945
    goto/16 :goto_d

    .line 946
    .line 947
    :pswitch_23
    move/from16 v19, v3

    .line 948
    .line 949
    move/from16 v18, v4

    .line 950
    .line 951
    const/4 v5, 0x0

    .line 952
    aget v3, v7, v2

    .line 953
    .line 954
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v4

    .line 958
    check-cast v4, Ljava/util/List;

    .line 959
    .line 960
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->w(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 961
    .line 962
    .line 963
    goto :goto_7

    .line 964
    :pswitch_24
    move/from16 v19, v3

    .line 965
    .line 966
    move/from16 v18, v4

    .line 967
    .line 968
    const/4 v5, 0x0

    .line 969
    aget v3, v7, v2

    .line 970
    .line 971
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    check-cast v4, Ljava/util/List;

    .line 976
    .line 977
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->v(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 978
    .line 979
    .line 980
    goto :goto_7

    .line 981
    :pswitch_25
    move/from16 v19, v3

    .line 982
    .line 983
    move/from16 v18, v4

    .line 984
    .line 985
    const/4 v5, 0x0

    .line 986
    aget v3, v7, v2

    .line 987
    .line 988
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v4

    .line 992
    check-cast v4, Ljava/util/List;

    .line 993
    .line 994
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->u(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 995
    .line 996
    .line 997
    goto :goto_7

    .line 998
    :pswitch_26
    move/from16 v19, v3

    .line 999
    .line 1000
    move/from16 v18, v4

    .line 1001
    .line 1002
    const/4 v5, 0x0

    .line 1003
    aget v3, v7, v2

    .line 1004
    .line 1005
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v4

    .line 1009
    check-cast v4, Ljava/util/List;

    .line 1010
    .line 1011
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->o(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1012
    .line 1013
    .line 1014
    goto :goto_7

    .line 1015
    :pswitch_27
    move/from16 v19, v3

    .line 1016
    .line 1017
    move/from16 v18, v4

    .line 1018
    .line 1019
    const/4 v5, 0x0

    .line 1020
    aget v3, v7, v2

    .line 1021
    .line 1022
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v4

    .line 1026
    check-cast v4, Ljava/util/List;

    .line 1027
    .line 1028
    invoke-static {v3, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_7

    .line 1032
    :pswitch_28
    move/from16 v19, v3

    .line 1033
    .line 1034
    move/from16 v18, v4

    .line 1035
    .line 1036
    aget v3, v7, v2

    .line 1037
    .line 1038
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v4

    .line 1042
    check-cast v4, Ljava/util/List;

    .line 1043
    .line 1044
    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1045
    .line 1046
    if-eqz v4, :cond_6

    .line 1047
    .line 1048
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1049
    .line 1050
    .line 1051
    move-result v5

    .line 1052
    if-nez v5, :cond_6

    .line 1053
    .line 1054
    move-object v5, v6

    .line 1055
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1056
    .line 1057
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    const/4 v10, 0x0

    .line 1061
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1062
    .line 1063
    .line 1064
    move-result v11

    .line 1065
    if-ge v10, v11, :cond_6

    .line 1066
    .line 1067
    iget-object v11, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1068
    .line 1069
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v12

    .line 1073
    check-cast v12, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1074
    .line 1075
    invoke-virtual {v11, v3, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1076
    .line 1077
    .line 1078
    add-int/lit8 v10, v10, 0x1

    .line 1079
    .line 1080
    goto :goto_9

    .line 1081
    :pswitch_29
    move/from16 v19, v3

    .line 1082
    .line 1083
    move/from16 v18, v4

    .line 1084
    .line 1085
    aget v3, v7, v2

    .line 1086
    .line 1087
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v4

    .line 1091
    check-cast v4, Ljava/util/List;

    .line 1092
    .line 1093
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v5

    .line 1097
    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1098
    .line 1099
    if-eqz v4, :cond_6

    .line 1100
    .line 1101
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1102
    .line 1103
    .line 1104
    move-result v10

    .line 1105
    if-nez v10, :cond_6

    .line 1106
    .line 1107
    move-object v10, v6

    .line 1108
    check-cast v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1109
    .line 1110
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    const/4 v11, 0x0

    .line 1114
    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1115
    .line 1116
    .line 1117
    move-result v12

    .line 1118
    if-ge v11, v12, :cond_6

    .line 1119
    .line 1120
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v12

    .line 1124
    iget-object v13, v10, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1125
    .line 1126
    check-cast v12, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1127
    .line 1128
    invoke-virtual {v13, v3, v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1129
    .line 1130
    .line 1131
    add-int/lit8 v11, v11, 0x1

    .line 1132
    .line 1133
    goto :goto_a

    .line 1134
    :pswitch_2a
    move/from16 v19, v3

    .line 1135
    .line 1136
    move/from16 v18, v4

    .line 1137
    .line 1138
    aget v3, v7, v2

    .line 1139
    .line 1140
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v4

    .line 1144
    check-cast v4, Ljava/util/List;

    .line 1145
    .line 1146
    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1147
    .line 1148
    if-eqz v4, :cond_6

    .line 1149
    .line 1150
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v5

    .line 1154
    if-nez v5, :cond_6

    .line 1155
    .line 1156
    move-object v5, v6

    .line 1157
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1158
    .line 1159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1160
    .line 1161
    .line 1162
    const/4 v10, 0x0

    .line 1163
    :goto_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1164
    .line 1165
    .line 1166
    move-result v11

    .line 1167
    if-ge v10, v11, :cond_6

    .line 1168
    .line 1169
    iget-object v11, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1170
    .line 1171
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v12

    .line 1175
    check-cast v12, Ljava/lang/String;

    .line 1176
    .line 1177
    invoke-virtual {v11, v3, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t(ILjava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    add-int/lit8 v10, v10, 0x1

    .line 1181
    .line 1182
    goto :goto_b

    .line 1183
    :pswitch_2b
    move/from16 v19, v3

    .line 1184
    .line 1185
    move/from16 v18, v4

    .line 1186
    .line 1187
    aget v3, v7, v2

    .line 1188
    .line 1189
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v4

    .line 1193
    check-cast v4, Ljava/util/List;

    .line 1194
    .line 1195
    const/4 v13, 0x0

    .line 1196
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1197
    .line 1198
    .line 1199
    goto/16 :goto_8

    .line 1200
    .line 1201
    :pswitch_2c
    move/from16 v19, v3

    .line 1202
    .line 1203
    move/from16 v18, v4

    .line 1204
    .line 1205
    const/4 v13, 0x0

    .line 1206
    aget v3, v7, v2

    .line 1207
    .line 1208
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v4

    .line 1212
    check-cast v4, Ljava/util/List;

    .line 1213
    .line 1214
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1215
    .line 1216
    .line 1217
    goto/16 :goto_8

    .line 1218
    .line 1219
    :pswitch_2d
    move/from16 v19, v3

    .line 1220
    .line 1221
    move/from16 v18, v4

    .line 1222
    .line 1223
    const/4 v13, 0x0

    .line 1224
    aget v3, v7, v2

    .line 1225
    .line 1226
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v4

    .line 1230
    check-cast v4, Ljava/util/List;

    .line 1231
    .line 1232
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1233
    .line 1234
    .line 1235
    goto/16 :goto_8

    .line 1236
    .line 1237
    :pswitch_2e
    move/from16 v19, v3

    .line 1238
    .line 1239
    move/from16 v18, v4

    .line 1240
    .line 1241
    const/4 v13, 0x0

    .line 1242
    aget v3, v7, v2

    .line 1243
    .line 1244
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v4

    .line 1248
    check-cast v4, Ljava/util/List;

    .line 1249
    .line 1250
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->s(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1251
    .line 1252
    .line 1253
    goto/16 :goto_8

    .line 1254
    .line 1255
    :pswitch_2f
    move/from16 v19, v3

    .line 1256
    .line 1257
    move/from16 v18, v4

    .line 1258
    .line 1259
    const/4 v13, 0x0

    .line 1260
    aget v3, v7, v2

    .line 1261
    .line 1262
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v4

    .line 1266
    check-cast v4, Ljava/util/List;

    .line 1267
    .line 1268
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1269
    .line 1270
    .line 1271
    goto/16 :goto_8

    .line 1272
    .line 1273
    :pswitch_30
    move/from16 v19, v3

    .line 1274
    .line 1275
    move/from16 v18, v4

    .line 1276
    .line 1277
    const/4 v13, 0x0

    .line 1278
    aget v3, v7, v2

    .line 1279
    .line 1280
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v4

    .line 1284
    check-cast v4, Ljava/util/List;

    .line 1285
    .line 1286
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->t(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1287
    .line 1288
    .line 1289
    goto/16 :goto_8

    .line 1290
    .line 1291
    :pswitch_31
    move/from16 v19, v3

    .line 1292
    .line 1293
    move/from16 v18, v4

    .line 1294
    .line 1295
    const/4 v13, 0x0

    .line 1296
    aget v3, v7, v2

    .line 1297
    .line 1298
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    check-cast v4, Ljava/util/List;

    .line 1303
    .line 1304
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->r(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1305
    .line 1306
    .line 1307
    goto/16 :goto_8

    .line 1308
    .line 1309
    :pswitch_32
    move/from16 v19, v3

    .line 1310
    .line 1311
    move/from16 v18, v4

    .line 1312
    .line 1313
    const/4 v13, 0x0

    .line 1314
    aget v3, v7, v2

    .line 1315
    .line 1316
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v4

    .line 1320
    check-cast v4, Ljava/util/List;

    .line 1321
    .line 1322
    invoke-static {v3, v4, v6, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->n(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 1323
    .line 1324
    .line 1325
    goto/16 :goto_8

    .line 1326
    .line 1327
    :pswitch_33
    const/4 v13, 0x0

    .line 1328
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v5

    .line 1332
    if-eqz v5, :cond_9

    .line 1333
    .line 1334
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v5

    .line 1338
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v10

    .line 1342
    move-object v11, v6

    .line 1343
    check-cast v11, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1344
    .line 1345
    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1346
    .line 1347
    .line 1348
    goto/16 :goto_d

    .line 1349
    .line 1350
    :pswitch_34
    const/4 v13, 0x0

    .line 1351
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1352
    .line 1353
    .line 1354
    move-result v5

    .line 1355
    if-eqz v5, :cond_7

    .line 1356
    .line 1357
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1358
    .line 1359
    .line 1360
    move-result-wide v10

    .line 1361
    move-object v0, v6

    .line 1362
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1363
    .line 1364
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1365
    .line 1366
    const/16 v20, 0x1

    .line 1367
    .line 1368
    shl-long v14, v10, v20

    .line 1369
    .line 1370
    shr-long v10, v10, v16

    .line 1371
    .line 1372
    xor-long/2addr v10, v14

    .line 1373
    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IJ)V

    .line 1374
    .line 1375
    .line 1376
    :cond_7
    :goto_c
    move-object/from16 v0, p0

    .line 1377
    .line 1378
    goto/16 :goto_d

    .line 1379
    .line 1380
    :pswitch_35
    const/4 v13, 0x0

    .line 1381
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v5

    .line 1385
    if-eqz v5, :cond_7

    .line 1386
    .line 1387
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1388
    .line 1389
    .line 1390
    move-result v0

    .line 1391
    move-object v5, v6

    .line 1392
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1393
    .line 1394
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1395
    .line 1396
    shl-int/lit8 v10, v0, 0x1

    .line 1397
    .line 1398
    shr-int/lit8 v0, v0, 0x1f

    .line 1399
    .line 1400
    xor-int/2addr v0, v10

    .line 1401
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(II)V

    .line 1402
    .line 1403
    .line 1404
    goto :goto_c

    .line 1405
    :pswitch_36
    const/4 v13, 0x0

    .line 1406
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1407
    .line 1408
    .line 1409
    move-result v5

    .line 1410
    if-eqz v5, :cond_7

    .line 1411
    .line 1412
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1413
    .line 1414
    .line 1415
    move-result-wide v10

    .line 1416
    move-object v0, v6

    .line 1417
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1418
    .line 1419
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1420
    .line 1421
    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n(IJ)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_c

    .line 1425
    :pswitch_37
    const/4 v13, 0x0

    .line 1426
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1427
    .line 1428
    .line 1429
    move-result v5

    .line 1430
    if-eqz v5, :cond_7

    .line 1431
    .line 1432
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1433
    .line 1434
    .line 1435
    move-result v0

    .line 1436
    move-object v5, v6

    .line 1437
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1438
    .line 1439
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1440
    .line 1441
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(II)V

    .line 1442
    .line 1443
    .line 1444
    goto :goto_c

    .line 1445
    :pswitch_38
    const/4 v13, 0x0

    .line 1446
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v5

    .line 1450
    if-eqz v5, :cond_7

    .line 1451
    .line 1452
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1453
    .line 1454
    .line 1455
    move-result v0

    .line 1456
    move-object v5, v6

    .line 1457
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1458
    .line 1459
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1460
    .line 1461
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p(II)V

    .line 1462
    .line 1463
    .line 1464
    goto :goto_c

    .line 1465
    :pswitch_39
    const/4 v13, 0x0

    .line 1466
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1467
    .line 1468
    .line 1469
    move-result v5

    .line 1470
    if-eqz v5, :cond_7

    .line 1471
    .line 1472
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1473
    .line 1474
    .line 1475
    move-result v0

    .line 1476
    move-object v5, v6

    .line 1477
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1478
    .line 1479
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1480
    .line 1481
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w(II)V

    .line 1482
    .line 1483
    .line 1484
    goto :goto_c

    .line 1485
    :pswitch_3a
    const/4 v13, 0x0

    .line 1486
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1487
    .line 1488
    .line 1489
    move-result v5

    .line 1490
    if-eqz v5, :cond_7

    .line 1491
    .line 1492
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1497
    .line 1498
    move-object v5, v6

    .line 1499
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1500
    .line 1501
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1502
    .line 1503
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1504
    .line 1505
    .line 1506
    goto/16 :goto_c

    .line 1507
    .line 1508
    :pswitch_3b
    const/4 v13, 0x0

    .line 1509
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v5

    .line 1513
    if-eqz v5, :cond_9

    .line 1514
    .line 1515
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v5

    .line 1519
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v10

    .line 1523
    move-object v11, v6

    .line 1524
    check-cast v11, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1525
    .line 1526
    iget-object v11, v11, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1527
    .line 1528
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1529
    .line 1530
    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1531
    .line 1532
    .line 1533
    goto/16 :goto_d

    .line 1534
    .line 1535
    :pswitch_3c
    const/4 v13, 0x0

    .line 1536
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1537
    .line 1538
    .line 1539
    move-result v5

    .line 1540
    if-eqz v5, :cond_7

    .line 1541
    .line 1542
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0

    .line 1546
    instance-of v5, v0, Ljava/lang/String;

    .line 1547
    .line 1548
    if-eqz v5, :cond_8

    .line 1549
    .line 1550
    check-cast v0, Ljava/lang/String;

    .line 1551
    .line 1552
    move-object v5, v6

    .line 1553
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1554
    .line 1555
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1556
    .line 1557
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t(ILjava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    goto/16 :goto_c

    .line 1561
    .line 1562
    :cond_8
    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1563
    .line 1564
    move-object v5, v6

    .line 1565
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1566
    .line 1567
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1568
    .line 1569
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1570
    .line 1571
    .line 1572
    goto/16 :goto_c

    .line 1573
    .line 1574
    :pswitch_3d
    const/4 v13, 0x0

    .line 1575
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1576
    .line 1577
    .line 1578
    move-result v5

    .line 1579
    if-eqz v5, :cond_7

    .line 1580
    .line 1581
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1582
    .line 1583
    invoke-virtual {v0, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    .line 1584
    .line 1585
    .line 1586
    move-result v0

    .line 1587
    move-object v5, v6

    .line 1588
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1589
    .line 1590
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1591
    .line 1592
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h(IZ)V

    .line 1593
    .line 1594
    .line 1595
    goto/16 :goto_c

    .line 1596
    .line 1597
    :pswitch_3e
    const/4 v13, 0x0

    .line 1598
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v5

    .line 1602
    if-eqz v5, :cond_7

    .line 1603
    .line 1604
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1605
    .line 1606
    .line 1607
    move-result v0

    .line 1608
    move-object v5, v6

    .line 1609
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1610
    .line 1611
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1612
    .line 1613
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(II)V

    .line 1614
    .line 1615
    .line 1616
    goto/16 :goto_c

    .line 1617
    .line 1618
    :pswitch_3f
    const/4 v13, 0x0

    .line 1619
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v5

    .line 1623
    if-eqz v5, :cond_7

    .line 1624
    .line 1625
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1626
    .line 1627
    .line 1628
    move-result-wide v10

    .line 1629
    move-object v0, v6

    .line 1630
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1631
    .line 1632
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1633
    .line 1634
    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n(IJ)V

    .line 1635
    .line 1636
    .line 1637
    goto/16 :goto_c

    .line 1638
    .line 1639
    :pswitch_40
    const/4 v13, 0x0

    .line 1640
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1641
    .line 1642
    .line 1643
    move-result v5

    .line 1644
    if-eqz v5, :cond_7

    .line 1645
    .line 1646
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1647
    .line 1648
    .line 1649
    move-result v0

    .line 1650
    move-object v5, v6

    .line 1651
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1652
    .line 1653
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1654
    .line 1655
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p(II)V

    .line 1656
    .line 1657
    .line 1658
    goto/16 :goto_c

    .line 1659
    .line 1660
    :pswitch_41
    const/4 v13, 0x0

    .line 1661
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1662
    .line 1663
    .line 1664
    move-result v5

    .line 1665
    if-eqz v5, :cond_7

    .line 1666
    .line 1667
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1668
    .line 1669
    .line 1670
    move-result-wide v10

    .line 1671
    move-object v0, v6

    .line 1672
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1673
    .line 1674
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1675
    .line 1676
    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IJ)V

    .line 1677
    .line 1678
    .line 1679
    goto/16 :goto_c

    .line 1680
    .line 1681
    :pswitch_42
    const/4 v13, 0x0

    .line 1682
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1683
    .line 1684
    .line 1685
    move-result v5

    .line 1686
    if-eqz v5, :cond_7

    .line 1687
    .line 1688
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1689
    .line 1690
    .line 1691
    move-result-wide v10

    .line 1692
    move-object v0, v6

    .line 1693
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1694
    .line 1695
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1696
    .line 1697
    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y(IJ)V

    .line 1698
    .line 1699
    .line 1700
    goto/16 :goto_c

    .line 1701
    .line 1702
    :pswitch_43
    const/4 v13, 0x0

    .line 1703
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1704
    .line 1705
    .line 1706
    move-result v5

    .line 1707
    if-eqz v5, :cond_7

    .line 1708
    .line 1709
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1710
    .line 1711
    invoke-virtual {v0, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    .line 1712
    .line 1713
    .line 1714
    move-result v0

    .line 1715
    move-object v5, v6

    .line 1716
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1717
    .line 1718
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1719
    .line 1720
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1721
    .line 1722
    .line 1723
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1724
    .line 1725
    .line 1726
    move-result v0

    .line 1727
    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l(II)V

    .line 1728
    .line 1729
    .line 1730
    goto/16 :goto_c

    .line 1731
    .line 1732
    :pswitch_44
    const/4 v13, 0x0

    .line 1733
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1734
    .line 1735
    .line 1736
    move-result v5

    .line 1737
    if-eqz v5, :cond_9

    .line 1738
    .line 1739
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1740
    .line 1741
    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    .line 1742
    .line 1743
    .line 1744
    move-result-wide v10

    .line 1745
    move-object v5, v6

    .line 1746
    check-cast v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 1747
    .line 1748
    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    .line 1749
    .line 1750
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    .line 1752
    .line 1753
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 1754
    .line 1755
    .line 1756
    move-result-wide v10

    .line 1757
    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n(IJ)V

    .line 1758
    .line 1759
    .line 1760
    :cond_9
    :goto_d
    add-int/lit8 v2, v2, 0x3

    .line 1761
    .line 1762
    const v10, 0xfffff

    .line 1763
    .line 1764
    .line 1765
    goto/16 :goto_0

    .line 1766
    .line 1767
    :cond_a
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 1768
    .line 1769
    check-cast v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 1770
    .line 1771
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1772
    .line 1773
    .line 1774
    move-object v0, v1

    .line 1775
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1776
    .line 1777
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1778
    .line 1779
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->d(Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 1780
    .line 1781
    .line 1782
    return-void

    .line 1783
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v2

    .line 24
    int-to-long v6, v3

    .line 25
    aget v1, v1, v0

    .line 26
    .line 27
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_1
    move-object v5, p1

    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    sget-object v2, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 48
    .line 49
    invoke-virtual {v2, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    sget-object v2, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 71
    .line 72
    invoke-virtual {v2, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 84
    .line 85
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 86
    .line 87
    invoke-virtual {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 96
    .line 97
    check-cast v3, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 98
    .line 99
    invoke-virtual {v3, v2, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 108
    .line 109
    check-cast v1, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 115
    .line 116
    invoke-virtual {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 121
    .line 122
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-lez v3, :cond_2

    .line 137
    .line 138
    if-lez v4, :cond_2

    .line 139
    .line 140
    move-object v5, v2

    .line 141
    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;

    .line 142
    .line 143
    iget-boolean v5, v5, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->j:Z

    .line 144
    .line 145
    if-nez v5, :cond_1

    .line 146
    .line 147
    add-int/2addr v4, v3

    .line 148
    check-cast v2, Landroidx/datastore/preferences/protobuf/ProtobufArrayList;

    .line 149
    .line 150
    invoke-virtual {v2, v4}, Landroidx/datastore/preferences/protobuf/ProtobufArrayList;->d(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    .line 156
    .line 157
    :cond_2
    if-lez v3, :cond_3

    .line 158
    .line 159
    move-object v1, v2

    .line 160
    :cond_3
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_0

    .line 174
    .line 175
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 176
    .line 177
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    .line 195
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 196
    .line 197
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_0

    .line 214
    .line 215
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 216
    .line 217
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_0

    .line 234
    .line 235
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 236
    .line 237
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    .line 255
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 256
    .line 257
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_0

    .line 274
    .line 275
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 276
    .line 277
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_0

    .line 294
    .line 295
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 296
    .line 297
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_0

    .line 319
    .line 320
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 321
    .line 322
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_0

    .line 339
    .line 340
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 341
    .line 342
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->j(Ljava/lang/Object;JZ)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_0

    .line 359
    .line 360
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 361
    .line 362
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_0

    .line 379
    .line 380
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 381
    .line 382
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 383
    .line 384
    .line 385
    move-result-wide v1

    .line 386
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_1

    .line 393
    .line 394
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_0

    .line 399
    .line 400
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 401
    .line 402
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_0

    .line 419
    .line 420
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 421
    .line 422
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 423
    .line 424
    .line 425
    move-result-wide v1

    .line 426
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_0

    .line 439
    .line 440
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 441
    .line 442
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 443
    .line 444
    .line 445
    move-result-wide v1

    .line 446
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_0

    .line 459
    .line 460
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 461
    .line 462
    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JF)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_1

    .line 473
    .line 474
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    if-eqz v1, :cond_0

    .line 479
    .line 480
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 481
    .line 482
    invoke-virtual {v4, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    .line 483
    .line 484
    .line 485
    move-result-wide v8

    .line 486
    move-object v5, p1

    .line 487
    invoke-virtual/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->l(Ljava/lang/Object;JD)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 494
    .line 495
    move-object p1, v5

    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_4
    move-object v5, p1

    .line 499
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 500
    .line 501
    invoke-static {p0, v5, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->k(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :cond_5
    move-object v5, p1

    .line 506
    const-string p0, "Mutating immutable message: "

    .line 507
    .line 508
    invoke-static {v5, p0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    return-void

    .line 512
    nop

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->p(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->j()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 29
    .line 30
    array-length v2, v0

    .line 31
    move v3, v1

    .line 32
    :goto_0
    if-ge v3, v2, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const v5, 0xfffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v5, v4

    .line 42
    int-to-long v5, v5

    .line 43
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v7, 0x9

    .line 48
    .line 49
    if-eq v4, v7, :cond_3

    .line 50
    .line 51
    const/16 v7, 0x3c

    .line 52
    .line 53
    if-eq v4, v7, :cond_2

    .line 54
    .line 55
    const/16 v7, 0x44

    .line 56
    .line 57
    if-eq v4, v7, :cond_2

    .line 58
    .line 59
    packed-switch v4, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_0
    sget-object v4, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 64
    .line 65
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 72
    .line 73
    check-cast v8, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-object v8, v7

    .line 79
    check-cast v8, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 80
    .line 81
    iput-boolean v1, v8, Landroidx/datastore/preferences/protobuf/MapFieldLite;->j:Z

    .line 82
    .line 83
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 88
    .line 89
    check-cast v4, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 95
    .line 96
    invoke-virtual {v4, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 101
    .line 102
    check-cast v4, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;

    .line 103
    .line 104
    iget-boolean v5, v4, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->j:Z

    .line 105
    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    iput-boolean v1, v4, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->j:Z

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    aget v4, v0, v3

    .line 112
    .line 113
    invoke-virtual {p0, v4, v3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 124
    .line 125
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/Schema;->b(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_4

    .line 138
    .line 139
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 144
    .line 145
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/Schema;->b(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 156
    .line 157
    check-cast p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 163
    .line 164
    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 165
    .line 166
    iget-boolean p1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e:Z

    .line 167
    .line 168
    if-eqz p1, :cond_6

    .line 169
    .line 170
    iput-boolean v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e:Z

    .line 171
    .line 172
    :cond_6
    :goto_2
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v6, 0xfffff

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move v2, v6

    .line 10
    move v3, v7

    .line 11
    move v8, v3

    .line 12
    :goto_0
    iget v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->h:I

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v8, v4, :cond_e

    .line 16
    .line 17
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->g:[I

    .line 18
    .line 19
    aget v4, v4, v8

    .line 20
    .line 21
    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 22
    .line 23
    aget v10, v9, v4

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    add-int/lit8 v12, v4, 0x2

    .line 30
    .line 31
    aget v9, v9, v12

    .line 32
    .line 33
    and-int v12, v9, v6

    .line 34
    .line 35
    ushr-int/lit8 v9, v9, 0x14

    .line 36
    .line 37
    shl-int/2addr v5, v9

    .line 38
    if-eq v12, v2, :cond_1

    .line 39
    .line 40
    if-eq v12, v6, :cond_0

    .line 41
    .line 42
    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 43
    .line 44
    int-to-long v13, v12

    .line 45
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :cond_0
    move v2, v4

    .line 50
    move v4, v3

    .line 51
    move v3, v12

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v15, v3

    .line 54
    move v3, v2

    .line 55
    move v2, v4

    .line 56
    move v4, v15

    .line 57
    :goto_1
    const/high16 v9, 0x10000000

    .line 58
    .line 59
    and-int/2addr v9, v11

    .line 60
    if-eqz v9, :cond_2

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_2
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/16 v12, 0x9

    .line 75
    .line 76
    if-eq v9, v12, :cond_c

    .line 77
    .line 78
    const/16 v12, 0x11

    .line 79
    .line 80
    if-eq v9, v12, :cond_c

    .line 81
    .line 82
    const/16 v5, 0x1b

    .line 83
    .line 84
    if-eq v9, v5, :cond_9

    .line 85
    .line 86
    const/16 v5, 0x3c

    .line 87
    .line 88
    if-eq v9, v5, :cond_8

    .line 89
    .line 90
    const/16 v5, 0x44

    .line 91
    .line 92
    if-eq v9, v5, :cond_8

    .line 93
    .line 94
    const/16 v5, 0x31

    .line 95
    .line 96
    if-eq v9, v5, :cond_9

    .line 97
    .line 98
    const/16 v5, 0x32

    .line 99
    .line 100
    if-eq v9, v5, :cond_3

    .line 101
    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_3
    and-int v5, v11, v6

    .line 105
    .line 106
    int-to-long v9, v5

    .line 107
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 108
    .line 109
    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 114
    .line 115
    check-cast v9, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    check-cast v5, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_4

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_4
    div-int/lit8 v2, v2, 0x3

    .line 131
    .line 132
    mul-int/lit8 v2, v2, 0x2

    .line 133
    .line 134
    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    .line 135
    .line 136
    aget-object v2, v9, v2

    .line 137
    .line 138
    check-cast v2, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 139
    .line 140
    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/MapEntryLite;->a:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 141
    .line 142
    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->b:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 143
    .line 144
    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->j:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 145
    .line 146
    sget-object v9, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->r:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 147
    .line 148
    if-eq v2, v9, :cond_5

    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const/4 v5, 0x0

    .line 161
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_d

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    if-nez v5, :cond_7

    .line 172
    .line 173
    sget-object v5, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 174
    .line 175
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/Protobuf;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :cond_7
    invoke-interface {v5, v9}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-nez v9, :cond_6

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    invoke-virtual {v0, v10, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_d

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    and-int v5, v11, v6

    .line 201
    .line 202
    int-to-long v9, v5

    .line 203
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 204
    .line 205
    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-interface {v2, v5}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_d

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    and-int v5, v11, v6

    .line 217
    .line 218
    int-to-long v9, v5

    .line 219
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 220
    .line 221
    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_a

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_a
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    move v9, v7

    .line 239
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-ge v9, v10, :cond_d

    .line 244
    .line 245
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    invoke-interface {v2, v10}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-nez v10, :cond_b

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_d

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    and-int v5, v11, v6

    .line 270
    .line 271
    int-to-long v9, v5

    .line 272
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 273
    .line 274
    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-interface {v2, v5}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_d

    .line 283
    .line 284
    :goto_3
    return v7

    .line 285
    :cond_d
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 286
    .line 287
    move v2, v3

    .line 288
    move v3, v4

    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_e
    return v5
.end method

.method public final d(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v6, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const v8, 0xfffff

    .line 8
    .line 9
    .line 10
    move v3, v8

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    :goto_0
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 15
    .line 16
    array-length v10, v5

    .line 17
    if-ge v2, v10, :cond_1a

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    aget v12, v5, v2

    .line 28
    .line 29
    add-int/lit8 v13, v2, 0x2

    .line 30
    .line 31
    aget v5, v5, v13

    .line 32
    .line 33
    and-int v13, v5, v8

    .line 34
    .line 35
    const/16 v14, 0x11

    .line 36
    .line 37
    const/4 v15, 0x1

    .line 38
    if-gt v11, v14, :cond_2

    .line 39
    .line 40
    if-eq v13, v3, :cond_1

    .line 41
    .line 42
    if-ne v13, v8, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    int-to-long v3, v13

    .line 47
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    move v4, v3

    .line 52
    :goto_1
    move v3, v13

    .line 53
    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    .line 54
    .line 55
    shl-int v5, v15, v5

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v5, 0x0

    .line 59
    :goto_2
    and-int/2addr v10, v8

    .line 60
    int-to-long v13, v10

    .line 61
    sget-object v10, Landroidx/datastore/preferences/protobuf/FieldType;->k:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 62
    .line 63
    iget v10, v10, Landroidx/datastore/preferences/protobuf/FieldType;->j:I

    .line 64
    .line 65
    if-lt v11, v10, :cond_3

    .line 66
    .line 67
    sget-object v10, Landroidx/datastore/preferences/protobuf/FieldType;->l:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 68
    .line 69
    iget v10, v10, Landroidx/datastore/preferences/protobuf/FieldType;->j:I

    .line 70
    .line 71
    :cond_3
    const/16 v10, 0x3f

    .line 72
    .line 73
    const/4 v7, 0x2

    .line 74
    packed-switch v11, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    goto/16 :goto_21

    .line 78
    .line 79
    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_19

    .line 84
    .line 85
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    mul-int/2addr v11, v7

    .line 100
    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 101
    .line 102
    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    add-int/2addr v5, v11

    .line 107
    :goto_3
    add-int/2addr v9, v5

    .line 108
    goto/16 :goto_21

    .line 109
    .line 110
    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_19

    .line 115
    .line 116
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v13

    .line 120
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    shl-long v11, v13, v15

    .line 125
    .line 126
    shr-long/2addr v13, v10

    .line 127
    xor-long v10, v11, v13

    .line 128
    .line 129
    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    :goto_4
    add-int/2addr v7, v5

    .line 134
    :goto_5
    add-int/2addr v9, v7

    .line 135
    goto/16 :goto_21

    .line 136
    .line 137
    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_19

    .line 142
    .line 143
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    shl-int/lit8 v10, v5, 0x1

    .line 152
    .line 153
    shr-int/lit8 v5, v5, 0x1f

    .line 154
    .line 155
    xor-int/2addr v5, v10

    .line 156
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    :goto_6
    add-int/2addr v5, v7

    .line 161
    goto :goto_3

    .line 162
    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_19

    .line 167
    .line 168
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    :goto_7
    add-int/lit8 v5, v5, 0x8

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_19

    .line 180
    .line 181
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    :goto_8
    add-int/lit8 v5, v5, 0x4

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_19

    .line 193
    .line 194
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    int-to-long v10, v5

    .line 203
    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    goto :goto_6

    .line 208
    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_19

    .line 213
    .line 214
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    goto :goto_6

    .line 227
    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_19

    .line 232
    .line 233
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 238
    .line 239
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_19

    .line 250
    .line 251
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 260
    .line 261
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 262
    .line 263
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 268
    .line 269
    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    add-int/2addr v7, v5

    .line 278
    add-int/2addr v7, v10

    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_19

    .line 286
    .line 287
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    instance-of v7, v5, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 292
    .line 293
    if-eqz v7, :cond_4

    .line 294
    .line 295
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 296
    .line 297
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    :goto_9
    add-int/2addr v5, v9

    .line 302
    move v9, v5

    .line 303
    goto/16 :goto_21

    .line 304
    .line 305
    :cond_4
    check-cast v5, Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    add-int/2addr v5, v7

    .line 316
    goto :goto_9

    .line 317
    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_19

    .line 322
    .line 323
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    add-int/2addr v5, v15

    .line 328
    goto/16 :goto_3

    .line 329
    .line 330
    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_19

    .line 335
    .line 336
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    goto/16 :goto_8

    .line 341
    .line 342
    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-eqz v5, :cond_19

    .line 347
    .line 348
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    goto/16 :goto_7

    .line 353
    .line 354
    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_19

    .line 359
    .line 360
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    int-to-long v10, v5

    .line 369
    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    goto/16 :goto_6

    .line 374
    .line 375
    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_19

    .line 380
    .line 381
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 382
    .line 383
    .line 384
    move-result-wide v10

    .line 385
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 390
    .line 391
    .line 392
    move-result v7

    .line 393
    goto/16 :goto_4

    .line 394
    .line 395
    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-eqz v5, :cond_19

    .line 400
    .line 401
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 402
    .line 403
    .line 404
    move-result-wide v10

    .line 405
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    goto/16 :goto_4

    .line 414
    .line 415
    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_19

    .line 420
    .line 421
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    goto/16 :goto_8

    .line 426
    .line 427
    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-eqz v5, :cond_19

    .line 432
    .line 433
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    goto/16 :goto_7

    .line 438
    .line 439
    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    div-int/lit8 v10, v2, 0x3

    .line 444
    .line 445
    mul-int/2addr v10, v7

    .line 446
    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    .line 447
    .line 448
    aget-object v10, v11, v10

    .line 449
    .line 450
    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 451
    .line 452
    check-cast v11, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 453
    .line 454
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    check-cast v5, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 458
    .line 459
    check-cast v10, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 460
    .line 461
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    if-eqz v11, :cond_5

    .line 466
    .line 467
    :goto_a
    const/4 v11, 0x0

    .line 468
    goto :goto_c

    .line 469
    :cond_5
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    const/4 v11, 0x0

    .line 478
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v13

    .line 482
    if-eqz v13, :cond_6

    .line 483
    .line 484
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v13

    .line 488
    check-cast v13, Ljava/util/Map$Entry;

    .line 489
    .line 490
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v14

    .line 494
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 502
    .line 503
    .line 504
    move-result v16

    .line 505
    iget-object v8, v10, Landroidx/datastore/preferences/protobuf/MapEntryLite;->a:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 506
    .line 507
    iget-object v7, v8, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 508
    .line 509
    invoke-static {v7, v15, v14}, Landroidx/datastore/preferences/protobuf/FieldSet;->a(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    iget-object v8, v8, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->b:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 514
    .line 515
    const/4 v14, 0x2

    .line 516
    invoke-static {v8, v14, v13}, Landroidx/datastore/preferences/protobuf/FieldSet;->a(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    .line 517
    .line 518
    .line 519
    move-result v8

    .line 520
    add-int/2addr v7, v8

    .line 521
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    add-int/2addr v8, v7

    .line 526
    add-int v8, v8, v16

    .line 527
    .line 528
    add-int/2addr v11, v8

    .line 529
    const/4 v7, 0x2

    .line 530
    const v8, 0xfffff

    .line 531
    .line 532
    .line 533
    goto :goto_b

    .line 534
    :cond_6
    :goto_c
    add-int/2addr v9, v11

    .line 535
    goto/16 :goto_21

    .line 536
    .line 537
    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    check-cast v5, Ljava/util/List;

    .line 542
    .line 543
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    sget-object v8, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 548
    .line 549
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 550
    .line 551
    .line 552
    move-result v8

    .line 553
    if-nez v8, :cond_7

    .line 554
    .line 555
    goto :goto_a

    .line 556
    :cond_7
    const/4 v10, 0x0

    .line 557
    const/4 v11, 0x0

    .line 558
    :goto_d
    if-ge v10, v8, :cond_6

    .line 559
    .line 560
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    check-cast v13, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 565
    .line 566
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 567
    .line 568
    .line 569
    move-result v14

    .line 570
    const/16 v17, 0x2

    .line 571
    .line 572
    mul-int/lit8 v14, v14, 0x2

    .line 573
    .line 574
    check-cast v13, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 575
    .line 576
    invoke-virtual {v13, v7}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 577
    .line 578
    .line 579
    move-result v13

    .line 580
    add-int/2addr v13, v14

    .line 581
    add-int/2addr v11, v13

    .line 582
    add-int/lit8 v10, v10, 0x1

    .line 583
    .line 584
    goto :goto_d

    .line 585
    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    check-cast v5, Ljava/util/List;

    .line 590
    .line 591
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    if-lez v5, :cond_19

    .line 596
    .line 597
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 602
    .line 603
    .line 604
    move-result v8

    .line 605
    :goto_e
    add-int/2addr v8, v7

    .line 606
    add-int/2addr v8, v5

    .line 607
    add-int/2addr v9, v8

    .line 608
    goto/16 :goto_21

    .line 609
    .line 610
    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v5

    .line 614
    check-cast v5, Ljava/util/List;

    .line 615
    .line 616
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    if-lez v5, :cond_19

    .line 621
    .line 622
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 623
    .line 624
    .line 625
    move-result v7

    .line 626
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 627
    .line 628
    .line 629
    move-result v8

    .line 630
    goto :goto_e

    .line 631
    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    check-cast v5, Ljava/util/List;

    .line 636
    .line 637
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 638
    .line 639
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 640
    .line 641
    .line 642
    move-result v5

    .line 643
    mul-int/lit8 v5, v5, 0x8

    .line 644
    .line 645
    if-lez v5, :cond_19

    .line 646
    .line 647
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 648
    .line 649
    .line 650
    move-result v7

    .line 651
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 652
    .line 653
    .line 654
    move-result v8

    .line 655
    goto :goto_e

    .line 656
    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v5

    .line 660
    check-cast v5, Ljava/util/List;

    .line 661
    .line 662
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 663
    .line 664
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    mul-int/lit8 v5, v5, 0x4

    .line 669
    .line 670
    if-lez v5, :cond_19

    .line 671
    .line 672
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 677
    .line 678
    .line 679
    move-result v8

    .line 680
    goto :goto_e

    .line 681
    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    check-cast v5, Ljava/util/List;

    .line 686
    .line 687
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    if-lez v5, :cond_19

    .line 692
    .line 693
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 694
    .line 695
    .line 696
    move-result v7

    .line 697
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 698
    .line 699
    .line 700
    move-result v8

    .line 701
    goto :goto_e

    .line 702
    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    check-cast v5, Ljava/util/List;

    .line 707
    .line 708
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    if-lez v5, :cond_19

    .line 713
    .line 714
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 715
    .line 716
    .line 717
    move-result v7

    .line 718
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 719
    .line 720
    .line 721
    move-result v8

    .line 722
    goto :goto_e

    .line 723
    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    check-cast v5, Ljava/util/List;

    .line 728
    .line 729
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 730
    .line 731
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 732
    .line 733
    .line 734
    move-result v5

    .line 735
    if-lez v5, :cond_19

    .line 736
    .line 737
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 738
    .line 739
    .line 740
    move-result v7

    .line 741
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 742
    .line 743
    .line 744
    move-result v8

    .line 745
    goto/16 :goto_e

    .line 746
    .line 747
    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    check-cast v5, Ljava/util/List;

    .line 752
    .line 753
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 754
    .line 755
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 756
    .line 757
    .line 758
    move-result v5

    .line 759
    mul-int/lit8 v5, v5, 0x4

    .line 760
    .line 761
    if-lez v5, :cond_19

    .line 762
    .line 763
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 764
    .line 765
    .line 766
    move-result v7

    .line 767
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 768
    .line 769
    .line 770
    move-result v8

    .line 771
    goto/16 :goto_e

    .line 772
    .line 773
    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    check-cast v5, Ljava/util/List;

    .line 778
    .line 779
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 780
    .line 781
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 782
    .line 783
    .line 784
    move-result v5

    .line 785
    mul-int/lit8 v5, v5, 0x8

    .line 786
    .line 787
    if-lez v5, :cond_19

    .line 788
    .line 789
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 790
    .line 791
    .line 792
    move-result v7

    .line 793
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 794
    .line 795
    .line 796
    move-result v8

    .line 797
    goto/16 :goto_e

    .line 798
    .line 799
    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    check-cast v5, Ljava/util/List;

    .line 804
    .line 805
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    .line 806
    .line 807
    .line 808
    move-result v5

    .line 809
    if-lez v5, :cond_19

    .line 810
    .line 811
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 812
    .line 813
    .line 814
    move-result v7

    .line 815
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    goto/16 :goto_e

    .line 820
    .line 821
    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    check-cast v5, Ljava/util/List;

    .line 826
    .line 827
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 828
    .line 829
    .line 830
    move-result v5

    .line 831
    if-lez v5, :cond_19

    .line 832
    .line 833
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 834
    .line 835
    .line 836
    move-result v7

    .line 837
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 838
    .line 839
    .line 840
    move-result v8

    .line 841
    goto/16 :goto_e

    .line 842
    .line 843
    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    check-cast v5, Ljava/util/List;

    .line 848
    .line 849
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    .line 850
    .line 851
    .line 852
    move-result v5

    .line 853
    if-lez v5, :cond_19

    .line 854
    .line 855
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 856
    .line 857
    .line 858
    move-result v7

    .line 859
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 860
    .line 861
    .line 862
    move-result v8

    .line 863
    goto/16 :goto_e

    .line 864
    .line 865
    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v5

    .line 869
    check-cast v5, Ljava/util/List;

    .line 870
    .line 871
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 872
    .line 873
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 874
    .line 875
    .line 876
    move-result v5

    .line 877
    mul-int/lit8 v5, v5, 0x4

    .line 878
    .line 879
    if-lez v5, :cond_19

    .line 880
    .line 881
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 882
    .line 883
    .line 884
    move-result v7

    .line 885
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 886
    .line 887
    .line 888
    move-result v8

    .line 889
    goto/16 :goto_e

    .line 890
    .line 891
    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v5

    .line 895
    check-cast v5, Ljava/util/List;

    .line 896
    .line 897
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 898
    .line 899
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 900
    .line 901
    .line 902
    move-result v5

    .line 903
    mul-int/lit8 v5, v5, 0x8

    .line 904
    .line 905
    if-lez v5, :cond_19

    .line 906
    .line 907
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 908
    .line 909
    .line 910
    move-result v7

    .line 911
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 912
    .line 913
    .line 914
    move-result v8

    .line 915
    goto/16 :goto_e

    .line 916
    .line 917
    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v5

    .line 921
    check-cast v5, Ljava/util/List;

    .line 922
    .line 923
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 924
    .line 925
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 926
    .line 927
    .line 928
    move-result v7

    .line 929
    if-nez v7, :cond_8

    .line 930
    .line 931
    :goto_f
    const/4 v8, 0x0

    .line 932
    goto :goto_11

    .line 933
    :cond_8
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    .line 934
    .line 935
    .line 936
    move-result v5

    .line 937
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 938
    .line 939
    .line 940
    move-result v8

    .line 941
    :goto_10
    mul-int/2addr v8, v7

    .line 942
    add-int/2addr v8, v5

    .line 943
    :cond_9
    :goto_11
    add-int/2addr v9, v8

    .line 944
    goto/16 :goto_21

    .line 945
    .line 946
    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    check-cast v5, Ljava/util/List;

    .line 951
    .line 952
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 953
    .line 954
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 955
    .line 956
    .line 957
    move-result v7

    .line 958
    if-nez v7, :cond_a

    .line 959
    .line 960
    goto :goto_f

    .line 961
    :cond_a
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    .line 962
    .line 963
    .line 964
    move-result v5

    .line 965
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 966
    .line 967
    .line 968
    move-result v8

    .line 969
    goto :goto_10

    .line 970
    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v5

    .line 974
    check-cast v5, Ljava/util/List;

    .line 975
    .line 976
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    .line 977
    .line 978
    .line 979
    move-result v5

    .line 980
    :goto_12
    add-int/2addr v9, v5

    .line 981
    goto/16 :goto_21

    .line 982
    .line 983
    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v5

    .line 987
    check-cast v5, Ljava/util/List;

    .line 988
    .line 989
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    .line 990
    .line 991
    .line 992
    move-result v5

    .line 993
    goto :goto_12

    .line 994
    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v5

    .line 998
    check-cast v5, Ljava/util/List;

    .line 999
    .line 1000
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1001
    .line 1002
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1003
    .line 1004
    .line 1005
    move-result v7

    .line 1006
    if-nez v7, :cond_b

    .line 1007
    .line 1008
    goto :goto_f

    .line 1009
    :cond_b
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    .line 1010
    .line 1011
    .line 1012
    move-result v5

    .line 1013
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1014
    .line 1015
    .line 1016
    move-result v8

    .line 1017
    goto :goto_10

    .line 1018
    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v5

    .line 1022
    check-cast v5, Ljava/util/List;

    .line 1023
    .line 1024
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1025
    .line 1026
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1027
    .line 1028
    .line 1029
    move-result v7

    .line 1030
    if-nez v7, :cond_c

    .line 1031
    .line 1032
    goto :goto_f

    .line 1033
    :cond_c
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    .line 1034
    .line 1035
    .line 1036
    move-result v5

    .line 1037
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1038
    .line 1039
    .line 1040
    move-result v8

    .line 1041
    goto :goto_10

    .line 1042
    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v5

    .line 1046
    check-cast v5, Ljava/util/List;

    .line 1047
    .line 1048
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1049
    .line 1050
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1051
    .line 1052
    .line 1053
    move-result v7

    .line 1054
    if-nez v7, :cond_d

    .line 1055
    .line 1056
    goto :goto_f

    .line 1057
    :cond_d
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1058
    .line 1059
    .line 1060
    move-result v8

    .line 1061
    mul-int/2addr v8, v7

    .line 1062
    const/4 v7, 0x0

    .line 1063
    :goto_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1064
    .line 1065
    .line 1066
    move-result v10

    .line 1067
    if-ge v7, v10, :cond_9

    .line 1068
    .line 1069
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v10

    .line 1073
    check-cast v10, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1074
    .line 1075
    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 1076
    .line 1077
    .line 1078
    move-result v10

    .line 1079
    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 1080
    .line 1081
    .line 1082
    move-result v11

    .line 1083
    add-int/2addr v11, v10

    .line 1084
    add-int/2addr v8, v11

    .line 1085
    add-int/lit8 v7, v7, 0x1

    .line 1086
    .line 1087
    goto :goto_13

    .line 1088
    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v5

    .line 1092
    check-cast v5, Ljava/util/List;

    .line 1093
    .line 1094
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v7

    .line 1098
    sget-object v8, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1099
    .line 1100
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1101
    .line 1102
    .line 1103
    move-result v8

    .line 1104
    if-nez v8, :cond_e

    .line 1105
    .line 1106
    const/4 v10, 0x0

    .line 1107
    goto :goto_15

    .line 1108
    :cond_e
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1109
    .line 1110
    .line 1111
    move-result v10

    .line 1112
    mul-int/2addr v10, v8

    .line 1113
    const/4 v11, 0x0

    .line 1114
    :goto_14
    if-ge v11, v8, :cond_f

    .line 1115
    .line 1116
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v12

    .line 1120
    check-cast v12, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1121
    .line 1122
    check-cast v12, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1123
    .line 1124
    invoke-virtual {v12, v7}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1125
    .line 1126
    .line 1127
    move-result v12

    .line 1128
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 1129
    .line 1130
    .line 1131
    move-result v13

    .line 1132
    add-int/2addr v13, v12

    .line 1133
    add-int/2addr v10, v13

    .line 1134
    add-int/lit8 v11, v11, 0x1

    .line 1135
    .line 1136
    goto :goto_14

    .line 1137
    :cond_f
    :goto_15
    add-int/2addr v9, v10

    .line 1138
    goto/16 :goto_21

    .line 1139
    .line 1140
    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v5

    .line 1144
    check-cast v5, Ljava/util/List;

    .line 1145
    .line 1146
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1147
    .line 1148
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1149
    .line 1150
    .line 1151
    move-result v7

    .line 1152
    if-nez v7, :cond_10

    .line 1153
    .line 1154
    goto/16 :goto_f

    .line 1155
    .line 1156
    :cond_10
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1157
    .line 1158
    .line 1159
    move-result v8

    .line 1160
    mul-int/2addr v8, v7

    .line 1161
    const/4 v10, 0x0

    .line 1162
    :goto_16
    if-ge v10, v7, :cond_9

    .line 1163
    .line 1164
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v11

    .line 1168
    instance-of v12, v11, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1169
    .line 1170
    if-eqz v12, :cond_11

    .line 1171
    .line 1172
    check-cast v11, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1173
    .line 1174
    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 1175
    .line 1176
    .line 1177
    move-result v11

    .line 1178
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 1179
    .line 1180
    .line 1181
    move-result v12

    .line 1182
    add-int/2addr v12, v11

    .line 1183
    add-int/2addr v12, v8

    .line 1184
    move v8, v12

    .line 1185
    goto :goto_17

    .line 1186
    :cond_11
    check-cast v11, Ljava/lang/String;

    .line 1187
    .line 1188
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c(Ljava/lang/String;)I

    .line 1189
    .line 1190
    .line 1191
    move-result v11

    .line 1192
    add-int/2addr v11, v8

    .line 1193
    move v8, v11

    .line 1194
    :goto_17
    add-int/lit8 v10, v10, 0x1

    .line 1195
    .line 1196
    goto :goto_16

    .line 1197
    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v5

    .line 1201
    check-cast v5, Ljava/util/List;

    .line 1202
    .line 1203
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1204
    .line 1205
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1206
    .line 1207
    .line 1208
    move-result v5

    .line 1209
    if-nez v5, :cond_12

    .line 1210
    .line 1211
    const/4 v7, 0x0

    .line 1212
    goto :goto_18

    .line 1213
    :cond_12
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1214
    .line 1215
    .line 1216
    move-result v7

    .line 1217
    add-int/2addr v7, v15

    .line 1218
    mul-int/2addr v7, v5

    .line 1219
    :goto_18
    add-int/2addr v9, v7

    .line 1220
    goto/16 :goto_21

    .line 1221
    .line 1222
    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v5

    .line 1226
    check-cast v5, Ljava/util/List;

    .line 1227
    .line 1228
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    .line 1229
    .line 1230
    .line 1231
    move-result v5

    .line 1232
    goto/16 :goto_12

    .line 1233
    .line 1234
    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v5

    .line 1238
    check-cast v5, Ljava/util/List;

    .line 1239
    .line 1240
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    .line 1241
    .line 1242
    .line 1243
    move-result v5

    .line 1244
    goto/16 :goto_12

    .line 1245
    .line 1246
    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v5

    .line 1250
    check-cast v5, Ljava/util/List;

    .line 1251
    .line 1252
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1253
    .line 1254
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1255
    .line 1256
    .line 1257
    move-result v7

    .line 1258
    if-nez v7, :cond_13

    .line 1259
    .line 1260
    goto/16 :goto_f

    .line 1261
    .line 1262
    :cond_13
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    .line 1263
    .line 1264
    .line 1265
    move-result v5

    .line 1266
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1267
    .line 1268
    .line 1269
    move-result v8

    .line 1270
    goto/16 :goto_10

    .line 1271
    .line 1272
    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v5

    .line 1276
    check-cast v5, Ljava/util/List;

    .line 1277
    .line 1278
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1279
    .line 1280
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1281
    .line 1282
    .line 1283
    move-result v7

    .line 1284
    if-nez v7, :cond_14

    .line 1285
    .line 1286
    goto/16 :goto_f

    .line 1287
    .line 1288
    :cond_14
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    .line 1289
    .line 1290
    .line 1291
    move-result v5

    .line 1292
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1293
    .line 1294
    .line 1295
    move-result v8

    .line 1296
    goto/16 :goto_10

    .line 1297
    .line 1298
    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v5

    .line 1302
    check-cast v5, Ljava/util/List;

    .line 1303
    .line 1304
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1305
    .line 1306
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1307
    .line 1308
    .line 1309
    move-result v7

    .line 1310
    if-nez v7, :cond_15

    .line 1311
    .line 1312
    goto/16 :goto_f

    .line 1313
    .line 1314
    :cond_15
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    .line 1315
    .line 1316
    .line 1317
    move-result v7

    .line 1318
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1319
    .line 1320
    .line 1321
    move-result v5

    .line 1322
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1323
    .line 1324
    .line 1325
    move-result v8

    .line 1326
    mul-int/2addr v8, v5

    .line 1327
    add-int/2addr v8, v7

    .line 1328
    goto/16 :goto_11

    .line 1329
    .line 1330
    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v5

    .line 1334
    check-cast v5, Ljava/util/List;

    .line 1335
    .line 1336
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    .line 1337
    .line 1338
    .line 1339
    move-result v5

    .line 1340
    goto/16 :goto_12

    .line 1341
    .line 1342
    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v5

    .line 1346
    check-cast v5, Ljava/util/List;

    .line 1347
    .line 1348
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    .line 1349
    .line 1350
    .line 1351
    move-result v5

    .line 1352
    goto/16 :goto_12

    .line 1353
    .line 1354
    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v5

    .line 1358
    if-eqz v5, :cond_19

    .line 1359
    .line 1360
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v5

    .line 1364
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1365
    .line 1366
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v7

    .line 1370
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1371
    .line 1372
    .line 1373
    move-result v8

    .line 1374
    const/16 v17, 0x2

    .line 1375
    .line 1376
    mul-int/lit8 v8, v8, 0x2

    .line 1377
    .line 1378
    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1379
    .line 1380
    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1381
    .line 1382
    .line 1383
    move-result v5

    .line 1384
    add-int/2addr v5, v8

    .line 1385
    goto/16 :goto_3

    .line 1386
    .line 1387
    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1388
    .line 1389
    .line 1390
    move-result v5

    .line 1391
    if-eqz v5, :cond_16

    .line 1392
    .line 1393
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1394
    .line 1395
    .line 1396
    move-result-wide v7

    .line 1397
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1398
    .line 1399
    .line 1400
    move-result v0

    .line 1401
    shl-long v11, v7, v15

    .line 1402
    .line 1403
    shr-long/2addr v7, v10

    .line 1404
    xor-long/2addr v7, v11

    .line 1405
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 1406
    .line 1407
    .line 1408
    move-result v5

    .line 1409
    :goto_19
    add-int/2addr v5, v0

    .line 1410
    add-int/2addr v9, v5

    .line 1411
    :cond_16
    :goto_1a
    move-object/from16 v0, p0

    .line 1412
    .line 1413
    goto/16 :goto_21

    .line 1414
    .line 1415
    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v5

    .line 1419
    if-eqz v5, :cond_16

    .line 1420
    .line 1421
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1422
    .line 1423
    .line 1424
    move-result v0

    .line 1425
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1426
    .line 1427
    .line 1428
    move-result v5

    .line 1429
    shl-int/lit8 v7, v0, 0x1

    .line 1430
    .line 1431
    shr-int/lit8 v0, v0, 0x1f

    .line 1432
    .line 1433
    xor-int/2addr v0, v7

    .line 1434
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    :goto_1b
    add-int/2addr v0, v5

    .line 1439
    :goto_1c
    add-int/2addr v9, v0

    .line 1440
    goto :goto_1a

    .line 1441
    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v5

    .line 1445
    if-eqz v5, :cond_17

    .line 1446
    .line 1447
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1448
    .line 1449
    .line 1450
    move-result v0

    .line 1451
    :goto_1d
    add-int/lit8 v0, v0, 0x8

    .line 1452
    .line 1453
    :goto_1e
    add-int/2addr v9, v0

    .line 1454
    :cond_17
    move-object/from16 v0, p0

    .line 1455
    .line 1456
    move-object/from16 v1, p1

    .line 1457
    .line 1458
    goto/16 :goto_21

    .line 1459
    .line 1460
    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1461
    .line 1462
    .line 1463
    move-result v5

    .line 1464
    if-eqz v5, :cond_17

    .line 1465
    .line 1466
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    :goto_1f
    add-int/lit8 v0, v0, 0x4

    .line 1471
    .line 1472
    goto :goto_1e

    .line 1473
    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v5

    .line 1477
    if-eqz v5, :cond_16

    .line 1478
    .line 1479
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1480
    .line 1481
    .line 1482
    move-result v0

    .line 1483
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1484
    .line 1485
    .line 1486
    move-result v5

    .line 1487
    int-to-long v7, v0

    .line 1488
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 1489
    .line 1490
    .line 1491
    move-result v0

    .line 1492
    goto :goto_1b

    .line 1493
    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1494
    .line 1495
    .line 1496
    move-result v5

    .line 1497
    if-eqz v5, :cond_16

    .line 1498
    .line 1499
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1500
    .line 1501
    .line 1502
    move-result v0

    .line 1503
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1504
    .line 1505
    .line 1506
    move-result v5

    .line 1507
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 1508
    .line 1509
    .line 1510
    move-result v0

    .line 1511
    goto :goto_1b

    .line 1512
    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1513
    .line 1514
    .line 1515
    move-result v5

    .line 1516
    if-eqz v5, :cond_16

    .line 1517
    .line 1518
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1523
    .line 1524
    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1525
    .line 1526
    .line 1527
    move-result v0

    .line 1528
    goto :goto_1c

    .line 1529
    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1530
    .line 1531
    .line 1532
    move-result v5

    .line 1533
    if-eqz v5, :cond_19

    .line 1534
    .line 1535
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v5

    .line 1539
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v7

    .line 1543
    sget-object v8, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 1544
    .line 1545
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1546
    .line 1547
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1548
    .line 1549
    .line 1550
    move-result v8

    .line 1551
    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1552
    .line 1553
    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1554
    .line 1555
    .line 1556
    move-result v5

    .line 1557
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 1558
    .line 1559
    .line 1560
    move-result v7

    .line 1561
    add-int/2addr v7, v5

    .line 1562
    add-int/2addr v7, v8

    .line 1563
    goto/16 :goto_5

    .line 1564
    .line 1565
    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1566
    .line 1567
    .line 1568
    move-result v5

    .line 1569
    if-eqz v5, :cond_16

    .line 1570
    .line 1571
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v0

    .line 1575
    instance-of v5, v0, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1576
    .line 1577
    if-eqz v5, :cond_18

    .line 1578
    .line 1579
    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1580
    .line 1581
    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1582
    .line 1583
    .line 1584
    move-result v0

    .line 1585
    :goto_20
    add-int/2addr v0, v9

    .line 1586
    move v9, v0

    .line 1587
    goto/16 :goto_1a

    .line 1588
    .line 1589
    :cond_18
    check-cast v0, Ljava/lang/String;

    .line 1590
    .line 1591
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1592
    .line 1593
    .line 1594
    move-result v5

    .line 1595
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c(Ljava/lang/String;)I

    .line 1596
    .line 1597
    .line 1598
    move-result v0

    .line 1599
    add-int/2addr v0, v5

    .line 1600
    goto :goto_20

    .line 1601
    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1602
    .line 1603
    .line 1604
    move-result v5

    .line 1605
    if-eqz v5, :cond_17

    .line 1606
    .line 1607
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    add-int/2addr v0, v15

    .line 1612
    goto/16 :goto_1e

    .line 1613
    .line 1614
    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v5

    .line 1618
    if-eqz v5, :cond_17

    .line 1619
    .line 1620
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1621
    .line 1622
    .line 1623
    move-result v0

    .line 1624
    goto/16 :goto_1f

    .line 1625
    .line 1626
    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1627
    .line 1628
    .line 1629
    move-result v5

    .line 1630
    if-eqz v5, :cond_17

    .line 1631
    .line 1632
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1633
    .line 1634
    .line 1635
    move-result v0

    .line 1636
    goto/16 :goto_1d

    .line 1637
    .line 1638
    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v5

    .line 1642
    if-eqz v5, :cond_16

    .line 1643
    .line 1644
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1645
    .line 1646
    .line 1647
    move-result v0

    .line 1648
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1649
    .line 1650
    .line 1651
    move-result v5

    .line 1652
    int-to-long v7, v0

    .line 1653
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 1654
    .line 1655
    .line 1656
    move-result v0

    .line 1657
    goto/16 :goto_1b

    .line 1658
    .line 1659
    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1660
    .line 1661
    .line 1662
    move-result v5

    .line 1663
    if-eqz v5, :cond_16

    .line 1664
    .line 1665
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1666
    .line 1667
    .line 1668
    move-result-wide v7

    .line 1669
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 1674
    .line 1675
    .line 1676
    move-result v5

    .line 1677
    goto/16 :goto_19

    .line 1678
    .line 1679
    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1680
    .line 1681
    .line 1682
    move-result v5

    .line 1683
    if-eqz v5, :cond_16

    .line 1684
    .line 1685
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1686
    .line 1687
    .line 1688
    move-result-wide v7

    .line 1689
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1690
    .line 1691
    .line 1692
    move-result v0

    .line 1693
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 1694
    .line 1695
    .line 1696
    move-result v5

    .line 1697
    goto/16 :goto_19

    .line 1698
    .line 1699
    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1700
    .line 1701
    .line 1702
    move-result v5

    .line 1703
    if-eqz v5, :cond_17

    .line 1704
    .line 1705
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1706
    .line 1707
    .line 1708
    move-result v0

    .line 1709
    goto/16 :goto_1f

    .line 1710
    .line 1711
    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(Ljava/lang/Object;IIII)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v5

    .line 1715
    if-eqz v5, :cond_19

    .line 1716
    .line 1717
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 1718
    .line 1719
    .line 1720
    move-result v5

    .line 1721
    goto/16 :goto_7

    .line 1722
    .line 1723
    :cond_19
    :goto_21
    add-int/lit8 v2, v2, 0x3

    .line 1724
    .line 1725
    const v8, 0xfffff

    .line 1726
    .line 1727
    .line 1728
    goto/16 :goto_0

    .line 1729
    .line 1730
    :cond_1a
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 1731
    .line 1732
    check-cast v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 1733
    .line 1734
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1735
    .line 1736
    .line 1737
    iget-object v0, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1738
    .line 1739
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->b()I

    .line 1740
    .line 1741
    .line 1742
    move-result v0

    .line 1743
    add-int/2addr v0, v9

    .line 1744
    return v0

    .line 1745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    packed-switch v4, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 41
    .line 42
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    mul-int/lit8 v3, v3, 0x35

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_1
    add-int/2addr v4, v3

    .line 53
    move v3, v4

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v3, v3, 0x35

    .line 63
    .line 64
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    mul-int/lit8 v3, v3, 0x35

    .line 80
    .line 81
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    :goto_2
    add-int/2addr v3, v4

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    mul-int/lit8 v3, v3, 0x35

    .line 95
    .line 96
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    goto :goto_1

    .line 105
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    mul-int/lit8 v3, v3, 0x35

    .line 112
    .line 113
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    goto :goto_2

    .line 118
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_2

    .line 123
    .line 124
    mul-int/lit8 v3, v3, 0x35

    .line 125
    .line 126
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    goto :goto_2

    .line 131
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_2

    .line 136
    .line 137
    mul-int/lit8 v3, v3, 0x35

    .line 138
    .line 139
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    goto :goto_2

    .line 144
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_2

    .line 149
    .line 150
    mul-int/lit8 v3, v3, 0x35

    .line 151
    .line 152
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 153
    .line 154
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    goto :goto_1

    .line 163
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_2

    .line 168
    .line 169
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 170
    .line 171
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    mul-int/lit8 v3, v3, 0x35

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_2

    .line 188
    .line 189
    mul-int/lit8 v3, v3, 0x35

    .line 190
    .line 191
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 192
    .line 193
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_2

    .line 210
    .line 211
    mul-int/lit8 v3, v3, 0x35

    .line 212
    .line 213
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 214
    .line 215
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    .line 226
    .line 227
    if-eqz v4, :cond_0

    .line 228
    .line 229
    :goto_3
    move v8, v9

    .line 230
    :cond_0
    add-int/2addr v8, v3

    .line 231
    move v3, v8

    .line 232
    goto/16 :goto_5

    .line 233
    .line 234
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_2

    .line 239
    .line 240
    mul-int/lit8 v3, v3, 0x35

    .line 241
    .line 242
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_2

    .line 253
    .line 254
    mul-int/lit8 v3, v3, 0x35

    .line 255
    .line 256
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_2

    .line 271
    .line 272
    mul-int/lit8 v3, v3, 0x35

    .line 273
    .line 274
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(JLjava/lang/Object;)I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_2

    .line 285
    .line 286
    mul-int/lit8 v3, v3, 0x35

    .line 287
    .line 288
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 289
    .line 290
    .line 291
    move-result-wide v4

    .line 292
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_2

    .line 303
    .line 304
    mul-int/lit8 v3, v3, 0x35

    .line 305
    .line 306
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)J

    .line 307
    .line 308
    .line 309
    move-result-wide v4

    .line 310
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_2

    .line 321
    .line 322
    mul-int/lit8 v3, v3, 0x35

    .line 323
    .line 324
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 325
    .line 326
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    check-cast v4, Ljava/lang/Float;

    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_2

    .line 347
    .line 348
    mul-int/lit8 v3, v3, 0x35

    .line 349
    .line 350
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 351
    .line 352
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    check-cast v4, Ljava/lang/Double;

    .line 357
    .line 358
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 359
    .line 360
    .line 361
    move-result-wide v4

    .line 362
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 363
    .line 364
    .line 365
    move-result-wide v4

    .line 366
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 373
    .line 374
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 375
    .line 376
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    goto/16 :goto_1

    .line 385
    .line 386
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 387
    .line 388
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 389
    .line 390
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :pswitch_14
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 401
    .line 402
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    if-eqz v4, :cond_1

    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    :cond_1
    :goto_4
    mul-int/lit8 v3, v3, 0x35

    .line 413
    .line 414
    add-int/2addr v3, v10

    .line 415
    goto/16 :goto_5

    .line 416
    .line 417
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 418
    .line 419
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 420
    .line 421
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 422
    .line 423
    .line 424
    move-result-wide v4

    .line 425
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    goto/16 :goto_1

    .line 430
    .line 431
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 432
    .line 433
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 434
    .line 435
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    goto/16 :goto_2

    .line 440
    .line 441
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 442
    .line 443
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 444
    .line 445
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 446
    .line 447
    .line 448
    move-result-wide v4

    .line 449
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 456
    .line 457
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 458
    .line 459
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    goto/16 :goto_2

    .line 464
    .line 465
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 466
    .line 467
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 468
    .line 469
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    goto/16 :goto_2

    .line 474
    .line 475
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 476
    .line 477
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 478
    .line 479
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    goto/16 :goto_2

    .line 484
    .line 485
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 486
    .line 487
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 488
    .line 489
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    goto/16 :goto_1

    .line 498
    .line 499
    :pswitch_1c
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 500
    .line 501
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    if-eqz v4, :cond_1

    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 508
    .line 509
    .line 510
    move-result v10

    .line 511
    goto :goto_4

    .line 512
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 513
    .line 514
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 515
    .line 516
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    check-cast v4, Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    goto/16 :goto_1

    .line 527
    .line 528
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 529
    .line 530
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 531
    .line 532
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    .line 537
    .line 538
    if-eqz v4, :cond_0

    .line 539
    .line 540
    goto/16 :goto_3

    .line 541
    .line 542
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 543
    .line 544
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 545
    .line 546
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    goto/16 :goto_2

    .line 551
    .line 552
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 553
    .line 554
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 555
    .line 556
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 557
    .line 558
    .line 559
    move-result-wide v4

    .line 560
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    goto/16 :goto_1

    .line 565
    .line 566
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 567
    .line 568
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 569
    .line 570
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    goto/16 :goto_2

    .line 575
    .line 576
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 577
    .line 578
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 579
    .line 580
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 581
    .line 582
    .line 583
    move-result-wide v4

    .line 584
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    goto/16 :goto_1

    .line 589
    .line 590
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 591
    .line 592
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 593
    .line 594
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 595
    .line 596
    .line 597
    move-result-wide v4

    .line 598
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    goto/16 :goto_1

    .line 603
    .line 604
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 605
    .line 606
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 607
    .line 608
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    .line 609
    .line 610
    .line 611
    move-result v4

    .line 612
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    goto/16 :goto_1

    .line 617
    .line 618
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 619
    .line 620
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 621
    .line 622
    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    .line 623
    .line 624
    .line 625
    move-result-wide v4

    .line 626
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 627
    .line 628
    .line 629
    move-result-wide v4

    .line 630
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    goto/16 :goto_1

    .line 635
    .line 636
    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x3

    .line 637
    .line 638
    goto/16 :goto_0

    .line 639
    .line 640
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 641
    .line 642
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 643
    .line 644
    check-cast p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 645
    .line 646
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 650
    .line 651
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->hashCode()I

    .line 652
    .line 653
    .line 654
    move-result p0

    .line 655
    add-int/2addr p0, v3

    .line 656
    return p0

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->M(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    packed-switch v5, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    aget v5, v0, v5

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    int-to-long v5, v5

    .line 34
    sget-object v9, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 35
    .line 36
    invoke-virtual {v9, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-virtual {v9, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ne v10, v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v9, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v9, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_0
    move v4, v2

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :pswitch_1
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 66
    .line 67
    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_2
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 82
    .line 83
    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 104
    .line 105
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_0

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_0

    .line 126
    .line 127
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 128
    .line 129
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    cmp-long v5, v9, v5

    .line 138
    .line 139
    if-nez v5, :cond_0

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_0

    .line 148
    .line 149
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 150
    .line 151
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-ne v6, v5, :cond_0

    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_0

    .line 168
    .line 169
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 170
    .line 171
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v9

    .line 175
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    cmp-long v5, v9, v5

    .line 180
    .line 181
    if-nez v5, :cond_0

    .line 182
    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_0

    .line 190
    .line 191
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 192
    .line 193
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-ne v6, v5, :cond_0

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_0

    .line 210
    .line 211
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 212
    .line 213
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-ne v6, v5, :cond_0

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_0

    .line 230
    .line 231
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 232
    .line 233
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-ne v6, v5, :cond_0

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_0

    .line 250
    .line 251
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 252
    .line 253
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_0

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .line 274
    .line 275
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 276
    .line 277
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_0

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_0

    .line 298
    .line 299
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 300
    .line 301
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_0

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_0

    .line 322
    .line 323
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 324
    .line 325
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-ne v6, v5, :cond_0

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_0

    .line 342
    .line 343
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 344
    .line 345
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-ne v6, v5, :cond_0

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_0

    .line 362
    .line 363
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 364
    .line 365
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v9

    .line 369
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v5

    .line 373
    cmp-long v5, v9, v5

    .line 374
    .line 375
    if-nez v5, :cond_0

    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_0

    .line 384
    .line 385
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 386
    .line 387
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-ne v6, v5, :cond_0

    .line 396
    .line 397
    goto :goto_1

    .line 398
    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_0

    .line 403
    .line 404
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 405
    .line 406
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 407
    .line 408
    .line 409
    move-result-wide v9

    .line 410
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 411
    .line 412
    .line 413
    move-result-wide v5

    .line 414
    cmp-long v5, v9, v5

    .line 415
    .line 416
    if-nez v5, :cond_0

    .line 417
    .line 418
    goto :goto_1

    .line 419
    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    if-eqz v5, :cond_0

    .line 424
    .line 425
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 426
    .line 427
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 428
    .line 429
    .line 430
    move-result-wide v9

    .line 431
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 432
    .line 433
    .line 434
    move-result-wide v5

    .line 435
    cmp-long v5, v9, v5

    .line 436
    .line 437
    if-nez v5, :cond_0

    .line 438
    .line 439
    goto :goto_1

    .line 440
    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-eqz v5, :cond_0

    .line 445
    .line 446
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 447
    .line 448
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-ne v6, v5, :cond_0

    .line 465
    .line 466
    goto :goto_1

    .line 467
    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-eqz v5, :cond_0

    .line 472
    .line 473
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 474
    .line 475
    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    .line 476
    .line 477
    .line 478
    move-result-wide v9

    .line 479
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 480
    .line 481
    .line 482
    move-result-wide v9

    .line 483
    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    .line 484
    .line 485
    .line 486
    move-result-wide v5

    .line 487
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 488
    .line 489
    .line 490
    move-result-wide v5

    .line 491
    cmp-long v5, v9, v5

    .line 492
    .line 493
    if-nez v5, :cond_0

    .line 494
    .line 495
    :goto_1
    if-nez v4, :cond_1

    .line 496
    .line 497
    goto :goto_2

    .line 498
    :cond_1
    add-int/lit8 v3, v3, 0x3

    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :cond_2
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 503
    .line 504
    check-cast p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 505
    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 510
    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    iget-object p0, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 515
    .line 516
    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result p0

    .line 520
    if-nez p0, :cond_3

    .line 521
    .line 522
    :goto_2
    return v2

    .line 523
    :cond_3
    return v4

    .line 524
    nop

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v5, p3

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_f

    .line 17
    .line 18
    iget-object v8, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 19
    .line 20
    iget-object v9, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->g:[I

    .line 21
    .line 22
    iget v10, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->i:I

    .line 23
    .line 24
    iget v11, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->h:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move-object v12, v0

    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(I)I

    .line 33
    .line 34
    .line 35
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v13, 0x0

    .line 37
    if-gez v3, :cond_5

    .line 38
    .line 39
    const v3, 0x7fffffff

    .line 40
    .line 41
    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    :goto_1
    if-ge v11, v10, :cond_0

    .line 45
    .line 46
    aget v0, v9, v11

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v11, v11, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    if-eqz v12, :cond_b

    .line 55
    .line 56
    check-cast v8, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :goto_2
    move-object v0, v2

    .line 62
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 63
    .line 64
    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 65
    .line 66
    goto/16 :goto_e

    .line 67
    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-nez v12, :cond_2

    .line 72
    .line 73
    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v12, v0

    .line 78
    goto :goto_4

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :goto_3
    move-object v6, v1

    .line 81
    goto/16 :goto_10

    .line 82
    .line 83
    :cond_2
    :goto_4
    invoke-virtual {v8, v13, v4, v12}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->b(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    :goto_5
    if-ge v11, v10, :cond_4

    .line 91
    .line 92
    aget v0, v9, v11

    .line 93
    .line 94
    invoke-virtual {v1, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v11, v11, 0x1

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_4
    if-eqz v12, :cond_b

    .line 101
    .line 102
    :goto_6
    goto :goto_2

    .line 103
    :cond_5
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 104
    .line 105
    .line 106
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 108
    .line 109
    .line 110
    move-result v7
    :try_end_3
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    const/4 v15, 0x3

    .line 112
    iget-object v14, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 113
    .line 114
    packed-switch v7, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    if-nez v12, :cond_6

    .line 118
    .line 119
    :try_start_4
    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object v12, v0

    .line 124
    goto :goto_8

    .line 125
    :catch_0
    move-object v6, v1

    .line 126
    :goto_7
    move-object v14, v4

    .line 127
    goto/16 :goto_c

    .line 128
    .line 129
    :cond_6
    :goto_8
    invoke-virtual {v8, v13, v4, v12}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->b(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    :goto_9
    if-ge v11, v10, :cond_7

    .line 136
    .line 137
    aget v0, v9, v11

    .line 138
    .line 139
    invoke-virtual {v1, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v11, v11, 0x1

    .line 143
    .line 144
    goto :goto_9

    .line 145
    :cond_7
    if-eqz v12, :cond_b

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :pswitch_0
    :try_start_5
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(IILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v4, v15}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v6, v7, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2, v0, v3, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->J(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 165
    .line 166
    .line 167
    :cond_8
    :goto_a
    move-object v6, v1

    .line 168
    move-object v14, v4

    .line 169
    goto/16 :goto_f

    .line 170
    .line 171
    :pswitch_1
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v6

    .line 175
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 176
    .line 177
    .line 178
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 179
    .line 180
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->r()J

    .line 181
    .line 182
    .line 183
    move-result-wide v14

    .line 184
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto :goto_a

    .line 195
    :pswitch_2
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 196
    .line 197
    .line 198
    move-result-wide v6

    .line 199
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 200
    .line 201
    .line 202
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 203
    .line 204
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->q()I

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_a

    .line 219
    :pswitch_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 220
    .line 221
    .line 222
    move-result-wide v6

    .line 223
    const/4 v14, 0x1

    .line 224
    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 225
    .line 226
    .line 227
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 228
    .line 229
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->p()J

    .line 230
    .line 231
    .line 232
    move-result-wide v14

    .line 233
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    goto :goto_a

    .line 244
    :pswitch_4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 245
    .line 246
    .line 247
    move-result-wide v6

    .line 248
    const/4 v14, 0x5

    .line 249
    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 250
    .line 251
    .line 252
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 253
    .line 254
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->o()I

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v14

    .line 262
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_a

    .line 269
    :pswitch_5
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 270
    .line 271
    .line 272
    iget-object v7, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 273
    .line 274
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->i()I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)V

    .line 279
    .line 280
    .line 281
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 282
    .line 283
    .line 284
    move-result-wide v14

    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_a

    .line 296
    .line 297
    :pswitch_6
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 298
    .line 299
    .line 300
    move-result-wide v6

    .line 301
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 302
    .line 303
    .line 304
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 305
    .line 306
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_a

    .line 321
    .line 322
    :pswitch_7
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v6

    .line 326
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->e()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 327
    .line 328
    .line 329
    move-result-object v14

    .line 330
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_a

    .line 337
    .line 338
    :pswitch_8
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(IILjava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 343
    .line 344
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    const/4 v14, 0x2

    .line 349
    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v6, v7, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v2, v0, v3, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->J(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_a

    .line 359
    .line 360
    :pswitch_9
    invoke-virtual {v1, v6, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_a

    .line 367
    .line 368
    :pswitch_a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 369
    .line 370
    .line 371
    move-result-wide v6

    .line 372
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 373
    .line 374
    .line 375
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 376
    .line 377
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->f()Z

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v14

    .line 385
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_a

    .line 392
    .line 393
    :pswitch_b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v6

    .line 397
    const/4 v14, 0x5

    .line 398
    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 399
    .line 400
    .line 401
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 402
    .line 403
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->j()I

    .line 404
    .line 405
    .line 406
    move-result v14

    .line 407
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_a

    .line 418
    .line 419
    :pswitch_c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 420
    .line 421
    .line 422
    move-result-wide v6

    .line 423
    const/4 v14, 0x1

    .line 424
    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 425
    .line 426
    .line 427
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 428
    .line 429
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->k()J

    .line 430
    .line 431
    .line 432
    move-result-wide v14

    .line 433
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 434
    .line 435
    .line 436
    move-result-object v14

    .line 437
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_a

    .line 444
    .line 445
    :pswitch_d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 446
    .line 447
    .line 448
    move-result-wide v6

    .line 449
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 450
    .line 451
    .line 452
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 453
    .line 454
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->m()I

    .line 455
    .line 456
    .line 457
    move-result v14

    .line 458
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v14

    .line 462
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_a

    .line 469
    .line 470
    :pswitch_e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v6

    .line 474
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 475
    .line 476
    .line 477
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 478
    .line 479
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()J

    .line 480
    .line 481
    .line 482
    move-result-wide v14

    .line 483
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 484
    .line 485
    .line 486
    move-result-object v14

    .line 487
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_a

    .line 494
    .line 495
    :pswitch_f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 496
    .line 497
    .line 498
    move-result-wide v6

    .line 499
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 500
    .line 501
    .line 502
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 503
    .line 504
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->n()J

    .line 505
    .line 506
    .line 507
    move-result-wide v14

    .line 508
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 509
    .line 510
    .line 511
    move-result-object v14

    .line 512
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_a

    .line 519
    .line 520
    :pswitch_10
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 521
    .line 522
    .line 523
    move-result-wide v6

    .line 524
    const/4 v14, 0x5

    .line 525
    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 526
    .line 527
    .line 528
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 529
    .line 530
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->l()F

    .line 531
    .line 532
    .line 533
    move-result v14

    .line 534
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 535
    .line 536
    .line 537
    move-result-object v14

    .line 538
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_a

    .line 545
    .line 546
    :pswitch_11
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 547
    .line 548
    .line 549
    move-result-wide v6

    .line 550
    const/4 v14, 0x1

    .line 551
    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 552
    .line 553
    .line 554
    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 555
    .line 556
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->h()D

    .line 557
    .line 558
    .line 559
    move-result-wide v14

    .line 560
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 561
    .line 562
    .line 563
    move-result-object v14

    .line 564
    invoke-static {v2, v6, v7, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 568
    .line 569
    .line 570
    goto/16 :goto_a

    .line 571
    .line 572
    :pswitch_12
    :try_start_6
    iget-object v0, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    .line 573
    .line 574
    div-int/lit8 v6, v3, 0x3

    .line 575
    .line 576
    const/16 v16, 0x2

    .line 577
    .line 578
    mul-int/lit8 v6, v6, 0x2

    .line 579
    .line 580
    aget-object v0, v0, v6

    .line 581
    .line 582
    move-object v6, v4

    .line 583
    move-object v4, v0

    .line 584
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V

    .line 585
    .line 586
    .line 587
    move-object/from16 v2, p1

    .line 588
    .line 589
    move-object/from16 v14, p2

    .line 590
    .line 591
    move-object v6, v1

    .line 592
    goto/16 :goto_f

    .line 593
    .line 594
    :catchall_1
    move-exception v0

    .line 595
    move-object/from16 v2, p1

    .line 596
    .line 597
    goto/16 :goto_3

    .line 598
    .line 599
    :catch_1
    move-object/from16 v2, p1

    .line 600
    .line 601
    move-object/from16 v14, p2

    .line 602
    .line 603
    move-object v6, v1

    .line 604
    goto/16 :goto_c

    .line 605
    .line 606
    :pswitch_13
    move v7, v3

    .line 607
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v3

    .line 611
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 612
    .line 613
    .line 614
    move-result-object v6
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 615
    move-object/from16 v2, p1

    .line 616
    .line 617
    move-object/from16 v5, p2

    .line 618
    .line 619
    move-object/from16 v7, p3

    .line 620
    .line 621
    :try_start_7
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 622
    .line 623
    .line 624
    move-object v4, v5

    .line 625
    goto/16 :goto_a

    .line 626
    .line 627
    :catch_2
    move-object v6, v1

    .line 628
    move-object v14, v5

    .line 629
    goto/16 :goto_c

    .line 630
    .line 631
    :pswitch_14
    :try_start_8
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 632
    .line 633
    .line 634
    move-result-wide v5

    .line 635
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 636
    .line 637
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->r(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_a

    .line 645
    .line 646
    :pswitch_15
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 647
    .line 648
    .line 649
    move-result-wide v5

    .line 650
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 651
    .line 652
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->q(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_a

    .line 660
    .line 661
    :pswitch_16
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 662
    .line 663
    .line 664
    move-result-wide v5

    .line 665
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 666
    .line 667
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->p(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_a

    .line 675
    .line 676
    :pswitch_17
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 677
    .line 678
    .line 679
    move-result-wide v5

    .line 680
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 681
    .line 682
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->o(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_a

    .line 690
    .line 691
    :pswitch_18
    move v7, v3

    .line 692
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 693
    .line 694
    .line 695
    move-result-wide v5

    .line 696
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 697
    .line 698
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-virtual {v4, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->h(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)V

    .line 706
    .line 707
    .line 708
    invoke-static {v2, v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->j(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    goto/16 :goto_a

    .line 712
    .line 713
    :pswitch_19
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 714
    .line 715
    .line 716
    move-result-wide v5

    .line 717
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 718
    .line 719
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->t(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_a

    .line 727
    .line 728
    :pswitch_1a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 729
    .line 730
    .line 731
    move-result-wide v5

    .line 732
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 733
    .line 734
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_a

    .line 742
    .line 743
    :pswitch_1b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 744
    .line 745
    .line 746
    move-result-wide v5

    .line 747
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 748
    .line 749
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->j(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 754
    .line 755
    .line 756
    goto/16 :goto_a

    .line 757
    .line 758
    :pswitch_1c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 759
    .line 760
    .line 761
    move-result-wide v5

    .line 762
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 763
    .line 764
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->k(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_a

    .line 772
    .line 773
    :pswitch_1d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 774
    .line 775
    .line 776
    move-result-wide v5

    .line 777
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 778
    .line 779
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->m(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_a

    .line 787
    .line 788
    :pswitch_1e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 789
    .line 790
    .line 791
    move-result-wide v5

    .line 792
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 793
    .line 794
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->u(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_a

    .line 802
    .line 803
    :pswitch_1f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 804
    .line 805
    .line 806
    move-result-wide v5

    .line 807
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 808
    .line 809
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->n(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_a

    .line 817
    .line 818
    :pswitch_20
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 819
    .line 820
    .line 821
    move-result-wide v5

    .line 822
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 823
    .line 824
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->l(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_a

    .line 832
    .line 833
    :pswitch_21
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 834
    .line 835
    .line 836
    move-result-wide v5

    .line 837
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 838
    .line 839
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->g(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 844
    .line 845
    .line 846
    goto/16 :goto_a

    .line 847
    .line 848
    :pswitch_22
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 849
    .line 850
    .line 851
    move-result-wide v5

    .line 852
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 853
    .line 854
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->r(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_a

    .line 862
    .line 863
    :pswitch_23
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 864
    .line 865
    .line 866
    move-result-wide v5

    .line 867
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 868
    .line 869
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->q(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 874
    .line 875
    .line 876
    goto/16 :goto_a

    .line 877
    .line 878
    :pswitch_24
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 879
    .line 880
    .line 881
    move-result-wide v5

    .line 882
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 883
    .line 884
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->p(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 889
    .line 890
    .line 891
    goto/16 :goto_a

    .line 892
    .line 893
    :pswitch_25
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 894
    .line 895
    .line 896
    move-result-wide v5

    .line 897
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 898
    .line 899
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->o(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_a

    .line 907
    .line 908
    :pswitch_26
    move v7, v3

    .line 909
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 910
    .line 911
    .line 912
    move-result-wide v5

    .line 913
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 914
    .line 915
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    invoke-virtual {v4, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->h(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)V

    .line 923
    .line 924
    .line 925
    invoke-static {v2, v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->j(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    goto/16 :goto_a

    .line 929
    .line 930
    :pswitch_27
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 931
    .line 932
    .line 933
    move-result-wide v5

    .line 934
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 935
    .line 936
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->t(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_a

    .line 944
    .line 945
    :pswitch_28
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 946
    .line 947
    .line 948
    move-result-wide v5

    .line 949
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 950
    .line 951
    invoke-virtual {v14, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->f(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 956
    .line 957
    .line 958
    goto/16 :goto_a

    .line 959
    .line 960
    :pswitch_29
    move v7, v3

    .line 961
    :try_start_9
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 962
    .line 963
    .line 964
    move-result-object v5
    :try_end_9
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 965
    move v3, v6

    .line 966
    move-object/from16 v6, p3

    .line 967
    .line 968
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->C(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 969
    .line 970
    .line 971
    move-object v0, v6

    .line 972
    move-object v6, v1

    .line 973
    move-object v1, v0

    .line 974
    move-object v0, v4

    .line 975
    :goto_b
    move-object v14, v0

    .line 976
    goto/16 :goto_f

    .line 977
    .line 978
    :catch_3
    move-object/from16 v17, v6

    .line 979
    .line 980
    move-object v6, v1

    .line 981
    move-object/from16 v1, v17

    .line 982
    .line 983
    goto/16 :goto_7

    .line 984
    .line 985
    :catch_4
    move-object v6, v1

    .line 986
    move-object/from16 v1, p3

    .line 987
    .line 988
    goto/16 :goto_7

    .line 989
    .line 990
    :pswitch_2a
    move-object v0, v4

    .line 991
    move v3, v6

    .line 992
    move-object v6, v1

    .line 993
    move-object v1, v5

    .line 994
    :try_start_b
    invoke-virtual {v6, v3, v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)V

    .line 995
    .line 996
    .line 997
    goto :goto_b

    .line 998
    :catch_5
    move-object v14, v0

    .line 999
    goto/16 :goto_c

    .line 1000
    .line 1001
    :pswitch_2b
    move-object v0, v4

    .line 1002
    move v3, v6

    .line 1003
    move-object v6, v1

    .line 1004
    move-object v1, v5

    .line 1005
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1006
    .line 1007
    .line 1008
    move-result-wide v3

    .line 1009
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1010
    .line 1011
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->d(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1016
    .line 1017
    .line 1018
    goto :goto_b

    .line 1019
    :catchall_2
    move-exception v0

    .line 1020
    goto/16 :goto_10

    .line 1021
    .line 1022
    :pswitch_2c
    move-object v0, v4

    .line 1023
    move v3, v6

    .line 1024
    move-object v6, v1

    .line 1025
    move-object v1, v5

    .line 1026
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1027
    .line 1028
    .line 1029
    move-result-wide v3

    .line 1030
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1031
    .line 1032
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v3

    .line 1036
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->j(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_b

    .line 1040
    :pswitch_2d
    move-object v0, v4

    .line 1041
    move v3, v6

    .line 1042
    move-object v6, v1

    .line 1043
    move-object v1, v5

    .line 1044
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v3

    .line 1048
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1049
    .line 1050
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->k(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_b

    .line 1058
    :pswitch_2e
    move-object v0, v4

    .line 1059
    move v3, v6

    .line 1060
    move-object v6, v1

    .line 1061
    move-object v1, v5

    .line 1062
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1063
    .line 1064
    .line 1065
    move-result-wide v3

    .line 1066
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1067
    .line 1068
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->m(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_b

    .line 1076
    :pswitch_2f
    move-object v0, v4

    .line 1077
    move v3, v6

    .line 1078
    move-object v6, v1

    .line 1079
    move-object v1, v5

    .line 1080
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1081
    .line 1082
    .line 1083
    move-result-wide v3

    .line 1084
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1085
    .line 1086
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->u(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1091
    .line 1092
    .line 1093
    goto :goto_b

    .line 1094
    :pswitch_30
    move-object v0, v4

    .line 1095
    move v3, v6

    .line 1096
    move-object v6, v1

    .line 1097
    move-object v1, v5

    .line 1098
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1099
    .line 1100
    .line 1101
    move-result-wide v3

    .line 1102
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1103
    .line 1104
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v3

    .line 1108
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->n(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1109
    .line 1110
    .line 1111
    goto/16 :goto_b

    .line 1112
    .line 1113
    :pswitch_31
    move-object v0, v4

    .line 1114
    move v3, v6

    .line 1115
    move-object v6, v1

    .line 1116
    move-object v1, v5

    .line 1117
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1118
    .line 1119
    .line 1120
    move-result-wide v3

    .line 1121
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1122
    .line 1123
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->l(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_b

    .line 1131
    .line 1132
    :pswitch_32
    move-object v0, v4

    .line 1133
    move v3, v6

    .line 1134
    move-object v6, v1

    .line 1135
    move-object v1, v5

    .line 1136
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1137
    .line 1138
    .line 1139
    move-result-wide v3

    .line 1140
    check-cast v14, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 1141
    .line 1142
    invoke-virtual {v14, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->g(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)V

    .line 1147
    .line 1148
    .line 1149
    goto/16 :goto_b

    .line 1150
    .line 1151
    :pswitch_33
    move-object v6, v1

    .line 1152
    move v7, v3

    .line 1153
    move-object v0, v4

    .line 1154
    move-object v1, v5

    .line 1155
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->u(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3

    .line 1159
    check-cast v3, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1160
    .line 1161
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v4

    .line 1165
    invoke-virtual {v0, v15}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v0, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v6, v2, v7, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 1172
    .line 1173
    .line 1174
    goto/16 :goto_b

    .line 1175
    .line 1176
    :pswitch_34
    move v7, v3

    .line 1177
    move-object v0, v4

    .line 1178
    move v3, v6

    .line 1179
    move-object v6, v1

    .line 1180
    move-object v1, v5

    .line 1181
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1182
    .line 1183
    .line 1184
    move-result-wide v3

    .line 1185
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1186
    .line 1187
    .line 1188
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1189
    .line 1190
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->r()J

    .line 1191
    .line 1192
    .line 1193
    move-result-wide v14

    .line 1194
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1198
    .line 1199
    .line 1200
    goto/16 :goto_b

    .line 1201
    .line 1202
    :pswitch_35
    move v7, v3

    .line 1203
    move-object v0, v4

    .line 1204
    move v3, v6

    .line 1205
    move-object v6, v1

    .line 1206
    move-object v1, v5

    .line 1207
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1208
    .line 1209
    .line 1210
    move-result-wide v3

    .line 1211
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1212
    .line 1213
    .line 1214
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1215
    .line 1216
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->q()I

    .line 1217
    .line 1218
    .line 1219
    move-result v5

    .line 1220
    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_b

    .line 1227
    .line 1228
    :pswitch_36
    move v7, v3

    .line 1229
    move-object v0, v4

    .line 1230
    move v3, v6

    .line 1231
    move-object v6, v1

    .line 1232
    move-object v1, v5

    .line 1233
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v3

    .line 1237
    const/4 v14, 0x1

    .line 1238
    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1239
    .line 1240
    .line 1241
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1242
    .line 1243
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->p()J

    .line 1244
    .line 1245
    .line 1246
    move-result-wide v14

    .line 1247
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1251
    .line 1252
    .line 1253
    goto/16 :goto_b

    .line 1254
    .line 1255
    :pswitch_37
    move v7, v3

    .line 1256
    move-object v0, v4

    .line 1257
    move v3, v6

    .line 1258
    move-object v6, v1

    .line 1259
    move-object v1, v5

    .line 1260
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1261
    .line 1262
    .line 1263
    move-result-wide v3

    .line 1264
    const/4 v14, 0x5

    .line 1265
    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1269
    .line 1270
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->o()I

    .line 1271
    .line 1272
    .line 1273
    move-result v5

    .line 1274
    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1278
    .line 1279
    .line 1280
    goto/16 :goto_b

    .line 1281
    .line 1282
    :pswitch_38
    move v7, v3

    .line 1283
    move-object v0, v4

    .line 1284
    move v3, v6

    .line 1285
    move-object v6, v1

    .line 1286
    move-object v1, v5

    .line 1287
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1288
    .line 1289
    .line 1290
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1291
    .line 1292
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->i()I

    .line 1293
    .line 1294
    .line 1295
    move-result v4

    .line 1296
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)V

    .line 1297
    .line 1298
    .line 1299
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1300
    .line 1301
    .line 1302
    move-result-wide v14

    .line 1303
    invoke-static {v4, v14, v15, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1307
    .line 1308
    .line 1309
    goto/16 :goto_b

    .line 1310
    .line 1311
    :pswitch_39
    move v7, v3

    .line 1312
    move-object v0, v4

    .line 1313
    move v3, v6

    .line 1314
    move-object v6, v1

    .line 1315
    move-object v1, v5

    .line 1316
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1317
    .line 1318
    .line 1319
    move-result-wide v3

    .line 1320
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1324
    .line 1325
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    .line 1326
    .line 1327
    .line 1328
    move-result v5

    .line 1329
    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1333
    .line 1334
    .line 1335
    goto/16 :goto_b

    .line 1336
    .line 1337
    :pswitch_3a
    move v7, v3

    .line 1338
    move-object v0, v4

    .line 1339
    move v3, v6

    .line 1340
    move-object v6, v1

    .line 1341
    move-object v1, v5

    .line 1342
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1343
    .line 1344
    .line 1345
    move-result-wide v3

    .line 1346
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->e()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v5

    .line 1350
    invoke-static {v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1354
    .line 1355
    .line 1356
    goto/16 :goto_b

    .line 1357
    .line 1358
    :pswitch_3b
    move-object v6, v1

    .line 1359
    move v7, v3

    .line 1360
    move-object v0, v4

    .line 1361
    move-object v1, v5

    .line 1362
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->u(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v3

    .line 1366
    check-cast v3, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1367
    .line 1368
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v4

    .line 1372
    const/4 v14, 0x2

    .line 1373
    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v0, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v6, v2, v7, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 1380
    .line 1381
    .line 1382
    goto/16 :goto_b

    .line 1383
    .line 1384
    :pswitch_3c
    move v7, v3

    .line 1385
    move-object v0, v4

    .line 1386
    move v3, v6

    .line 1387
    move-object v6, v1

    .line 1388
    move-object v1, v5

    .line 1389
    invoke-virtual {v6, v3, v0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1393
    .line 1394
    .line 1395
    goto/16 :goto_b

    .line 1396
    .line 1397
    :pswitch_3d
    move v7, v3

    .line 1398
    move-object v0, v4

    .line 1399
    move v3, v6

    .line 1400
    move-object v6, v1

    .line 1401
    move-object v1, v5

    .line 1402
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1403
    .line 1404
    .line 1405
    move-result-wide v3

    .line 1406
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1407
    .line 1408
    .line 1409
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1410
    .line 1411
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->f()Z

    .line 1412
    .line 1413
    .line 1414
    move-result v5

    .line 1415
    sget-object v14, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1416
    .line 1417
    invoke-virtual {v14, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->j(Ljava/lang/Object;JZ)V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1421
    .line 1422
    .line 1423
    goto/16 :goto_b

    .line 1424
    .line 1425
    :pswitch_3e
    move v7, v3

    .line 1426
    move-object v0, v4

    .line 1427
    move v3, v6

    .line 1428
    move-object v6, v1

    .line 1429
    move-object v1, v5

    .line 1430
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1431
    .line 1432
    .line 1433
    move-result-wide v3

    .line 1434
    const/4 v14, 0x5

    .line 1435
    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1436
    .line 1437
    .line 1438
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1439
    .line 1440
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->j()I

    .line 1441
    .line 1442
    .line 1443
    move-result v5

    .line 1444
    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1448
    .line 1449
    .line 1450
    goto/16 :goto_b

    .line 1451
    .line 1452
    :pswitch_3f
    move v7, v3

    .line 1453
    move-object v0, v4

    .line 1454
    move v3, v6

    .line 1455
    move-object v6, v1

    .line 1456
    move-object v1, v5

    .line 1457
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1458
    .line 1459
    .line 1460
    move-result-wide v3

    .line 1461
    const/4 v14, 0x1

    .line 1462
    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1466
    .line 1467
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->k()J

    .line 1468
    .line 1469
    .line 1470
    move-result-wide v14

    .line 1471
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1475
    .line 1476
    .line 1477
    goto/16 :goto_b

    .line 1478
    .line 1479
    :pswitch_40
    move v7, v3

    .line 1480
    move-object v0, v4

    .line 1481
    move v3, v6

    .line 1482
    move-object v6, v1

    .line 1483
    move-object v1, v5

    .line 1484
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1485
    .line 1486
    .line 1487
    move-result-wide v3

    .line 1488
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1489
    .line 1490
    .line 1491
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1492
    .line 1493
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->m()I

    .line 1494
    .line 1495
    .line 1496
    move-result v5

    .line 1497
    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(IJLjava/lang/Object;)V

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1501
    .line 1502
    .line 1503
    goto/16 :goto_b

    .line 1504
    .line 1505
    :pswitch_41
    move v7, v3

    .line 1506
    move-object v0, v4

    .line 1507
    move v3, v6

    .line 1508
    move-object v6, v1

    .line 1509
    move-object v1, v5

    .line 1510
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1511
    .line 1512
    .line 1513
    move-result-wide v3

    .line 1514
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1515
    .line 1516
    .line 1517
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1518
    .line 1519
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->w()J

    .line 1520
    .line 1521
    .line 1522
    move-result-wide v14

    .line 1523
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1527
    .line 1528
    .line 1529
    goto/16 :goto_b

    .line 1530
    .line 1531
    :pswitch_42
    move v7, v3

    .line 1532
    move-object v0, v4

    .line 1533
    move v3, v6

    .line 1534
    move-object v6, v1

    .line 1535
    move-object v1, v5

    .line 1536
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1537
    .line 1538
    .line 1539
    move-result-wide v3

    .line 1540
    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1541
    .line 1542
    .line 1543
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1544
    .line 1545
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->n()J

    .line 1546
    .line 1547
    .line 1548
    move-result-wide v14

    .line 1549
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JJ)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1553
    .line 1554
    .line 1555
    goto/16 :goto_b

    .line 1556
    .line 1557
    :pswitch_43
    move v7, v3

    .line 1558
    move-object v0, v4

    .line 1559
    move v3, v6

    .line 1560
    move-object v6, v1

    .line 1561
    move-object v1, v5

    .line 1562
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1563
    .line 1564
    .line 1565
    move-result-wide v3

    .line 1566
    const/4 v14, 0x5

    .line 1567
    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1568
    .line 1569
    .line 1570
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1571
    .line 1572
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->l()F

    .line 1573
    .line 1574
    .line 1575
    move-result v5

    .line 1576
    sget-object v14, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1577
    .line 1578
    invoke-virtual {v14, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JF)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 1582
    .line 1583
    .line 1584
    goto/16 :goto_b

    .line 1585
    .line 1586
    :pswitch_44
    move v7, v3

    .line 1587
    move-object v0, v4

    .line 1588
    move v3, v6

    .line 1589
    move-object v6, v1

    .line 1590
    move-object v1, v5

    .line 1591
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->x(I)J

    .line 1592
    .line 1593
    .line 1594
    move-result-wide v3

    .line 1595
    const/4 v14, 0x1

    .line 1596
    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 1597
    .line 1598
    .line 1599
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 1600
    .line 1601
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->h()D

    .line 1602
    .line 1603
    .line 1604
    move-result-wide v14
    :try_end_b
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1605
    :try_start_c
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;
    :try_end_c
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1606
    .line 1607
    move-object v1, v2

    .line 1608
    move-wide v2, v3

    .line 1609
    move-wide v4, v14

    .line 1610
    move-object/from16 v14, p2

    .line 1611
    .line 1612
    :try_start_d
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->l(Ljava/lang/Object;JD)V
    :try_end_d
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1613
    .line 1614
    .line 1615
    move-object v2, v1

    .line 1616
    :try_start_e
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1617
    .line 1618
    .line 1619
    goto :goto_f

    .line 1620
    :catchall_3
    move-exception v0

    .line 1621
    move-object v2, v1

    .line 1622
    goto :goto_10

    .line 1623
    :catch_6
    move-object v2, v1

    .line 1624
    goto :goto_c

    .line 1625
    :catch_7
    move-object/from16 v14, p2

    .line 1626
    .line 1627
    :catch_8
    :goto_c
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1628
    .line 1629
    .line 1630
    if-nez v12, :cond_9

    .line 1631
    .line 1632
    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v0

    .line 1636
    move-object v12, v0

    .line 1637
    :cond_9
    invoke-virtual {v8, v13, v14, v12}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->b(ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;)Z

    .line 1638
    .line 1639
    .line 1640
    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1641
    if-nez v0, :cond_c

    .line 1642
    .line 1643
    :goto_d
    if-ge v11, v10, :cond_a

    .line 1644
    .line 1645
    aget v0, v9, v11

    .line 1646
    .line 1647
    invoke-virtual {v6, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1648
    .line 1649
    .line 1650
    add-int/lit8 v11, v11, 0x1

    .line 1651
    .line 1652
    goto :goto_d

    .line 1653
    :cond_a
    if-eqz v12, :cond_b

    .line 1654
    .line 1655
    goto/16 :goto_6

    .line 1656
    .line 1657
    :cond_b
    :goto_e
    return-void

    .line 1658
    :cond_c
    :goto_f
    move-object/from16 v5, p3

    .line 1659
    .line 1660
    move-object v1, v6

    .line 1661
    move-object v4, v14

    .line 1662
    goto/16 :goto_0

    .line 1663
    .line 1664
    :goto_10
    if-ge v11, v10, :cond_d

    .line 1665
    .line 1666
    aget v1, v9, v11

    .line 1667
    .line 1668
    invoke-virtual {v6, v1, v2, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1669
    .line 1670
    .line 1671
    add-int/lit8 v11, v11, 0x1

    .line 1672
    .line 1673
    goto :goto_10

    .line 1674
    :cond_d
    if-eqz v12, :cond_e

    .line 1675
    .line 1676
    check-cast v8, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 1677
    .line 1678
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1679
    .line 1680
    .line 1681
    move-object v1, v2

    .line 1682
    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1683
    .line 1684
    iput-object v12, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1685
    .line 1686
    :cond_e
    throw v0

    .line 1687
    :cond_f
    const-string v0, "Mutating immutable message: "

    .line 1688
    .line 1689
    invoke-static {v2, v0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    .line 1691
    .line 1692
    return-void

    .line 1693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->j:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 2
    .line 3
    check-cast v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->e:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 9
    .line 10
    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 2
    .line 3
    aget p3, p3, p1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p3, v0

    .line 13
    int-to-long v0, p3

    .line 14
    sget-object p3, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 15
    .line 16
    invoke-virtual {p3, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lio/sentry/d;->i()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final m(I)Landroidx/datastore/preferences/protobuf/Schema;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v0, p0, p1

    .line 8
    .line 9
    check-cast v0, Landroidx/datastore/preferences/protobuf/Schema;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    aget-object v1, p0, v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    aput-object v0, p0, p1

    .line 27
    .line 28
    return-object v0
.end method

.method public final n(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    int-to-long v0, p1

    .line 29
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lfe;->h()V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :pswitch_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :pswitch_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    cmp-long p0, p0, v2

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 77
    .line 78
    .line 79
    move-result-wide p0

    .line 80
    cmp-long p0, p0, v2

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_5
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :pswitch_6
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 107
    .line 108
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_7
    sget-object p0, Landroidx/datastore/preferences/protobuf/ByteString;->k:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 117
    .line 118
    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 119
    .line 120
    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    xor-int/2addr p0, v6

    .line 129
    return p0

    .line 130
    :pswitch_8
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 131
    .line 132
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    if-eqz p0, :cond_3

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :pswitch_9
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 141
    .line 142
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    instance-of p1, p0, Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p1, :cond_0

    .line 149
    .line 150
    check-cast p0, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    xor-int/2addr p0, v6

    .line 157
    return p0

    .line 158
    :cond_0
    instance-of p1, p0, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 159
    .line 160
    if-eqz p1, :cond_1

    .line 161
    .line 162
    sget-object p1, Landroidx/datastore/preferences/protobuf/ByteString;->k:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    xor-int/2addr p0, v6

    .line 169
    return p0

    .line 170
    :cond_1
    invoke-static {}, Lfe;->h()V

    .line 171
    .line 172
    .line 173
    return v5

    .line 174
    :pswitch_a
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 175
    .line 176
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    return p0

    .line 181
    :pswitch_b
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 182
    .line 183
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_3

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_c
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 191
    .line 192
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 193
    .line 194
    .line 195
    move-result-wide p0

    .line 196
    cmp-long p0, p0, v2

    .line 197
    .line 198
    if-eqz p0, :cond_3

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_d
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 202
    .line 203
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-eqz p0, :cond_3

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_e
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 211
    .line 212
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 213
    .line 214
    .line 215
    move-result-wide p0

    .line 216
    cmp-long p0, p0, v2

    .line 217
    .line 218
    if-eqz p0, :cond_3

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :pswitch_f
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 222
    .line 223
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 224
    .line 225
    .line 226
    move-result-wide p0

    .line 227
    cmp-long p0, p0, v2

    .line 228
    .line 229
    if-eqz p0, :cond_3

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :pswitch_10
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 233
    .line 234
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-eqz p0, :cond_3

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :pswitch_11
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 246
    .line 247
    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    .line 248
    .line 249
    .line 250
    move-result-wide p0

    .line 251
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 252
    .line 253
    .line 254
    move-result-wide p0

    .line 255
    cmp-long p0, p0, v2

    .line 256
    .line 257
    if-eqz p0, :cond_3

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    .line 261
    .line 262
    shl-int p0, v6, p0

    .line 263
    .line 264
    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 265
    .line 266
    invoke-virtual {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    and-int/2addr p0, p1

    .line 271
    if-eqz p0, :cond_3

    .line 272
    .line 273
    :goto_0
    return v6

    .line 274
    :cond_3
    return v5

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    and-int p0, p4, p5

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final q(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final r(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v0

    .line 9
    int-to-long v0, p2

    .line 10
    sget-object p2, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    move-object p2, p0

    .line 21
    check-cast p2, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;->k:Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->b()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v2, p0

    .line 37
    check-cast v2, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-object v3, p2

    .line 43
    check-cast v3, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 44
    .line 45
    iget-boolean v3, v3, Landroidx/datastore/preferences/protobuf/MapFieldLite;->j:Z

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v3, Landroidx/datastore/preferences/protobuf/MapFieldLite;->k:Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->b()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object p2, v3

    .line 65
    :cond_1
    :goto_0
    check-cast p0, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 76
    .line 77
    iget-object p0, p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;->a:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 78
    .line 79
    const/4 p1, 0x2

    .line 80
    invoke-virtual {p5, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(I)V

    .line 81
    .line 82
    .line 83
    iget-object p3, p5, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 84
    .line 85
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->v()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->e(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->c:Ljava/lang/Object;

    .line 94
    .line 95
    const-string v2, ""

    .line 96
    .line 97
    move-object v3, v1

    .line 98
    :goto_1
    :try_start_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const v5, 0x7fffffff

    .line 103
    .line 104
    .line 105
    if-eq v4, v5, :cond_7

    .line 106
    .line 107
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c()Z

    .line 108
    .line 109
    .line 110
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    const/4 v5, 0x1

    .line 115
    const-string v6, "Unable to parse map entry."

    .line 116
    .line 117
    if-eq v4, v5, :cond_5

    .line 118
    .line 119
    if-eq v4, p1, :cond_4

    .line 120
    .line 121
    :try_start_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->x()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_3

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    new-instance v4, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 129
    .line 130
    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v4

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->b:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {p5, v4, v5, p4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->i(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    goto :goto_1

    .line 147
    :cond_5
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    invoke-virtual {p5, v4, v5, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->i(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    goto :goto_1

    .line 155
    :catch_0
    :try_start_2
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->x()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_6

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 163
    .line 164
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_7
    :goto_2
    invoke-virtual {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->d(I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :goto_3
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->d(I)V

    .line 176
    .line 177
    .line 178
    throw p0
.end method

.method public final s(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p3, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p1

    .line 80
    :cond_3
    invoke-interface {p3, p0, v3}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 87
    .line 88
    aget p0, p0, p1

    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "Source subfield "

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, " is present but null: "

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method

.method public final t(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v5}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p0, p1

    .line 84
    :cond_3
    invoke-interface {p3, p0, v5}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    aget p1, v0, p1

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "Source subfield "

    .line 95
    .line 96
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " is present but null: "

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public final u(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final v(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->L(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const p2, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, p2

    .line 26
    int-to-long v1, p0

    .line 27
    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->i()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method
