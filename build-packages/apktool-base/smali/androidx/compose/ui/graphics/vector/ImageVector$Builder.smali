.class public final Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/ImageVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFJIZI)V
    .locals 11

    .line 1
    and-int/lit8 v0, p10, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p10, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->h:J

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-wide/from16 v0, p6

    .line 15
    .line 16
    :goto_0
    and-int/lit8 v2, p10, 0x40

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move/from16 v2, p8

    .line 23
    .line 24
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a:Ljava/lang/String;

    .line 28
    .line 29
    iput p2, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->b:F

    .line 30
    .line 31
    iput p3, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c:F

    .line 32
    .line 33
    iput p4, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d:F

    .line 34
    .line 35
    move/from16 p1, p5

    .line 36
    .line 37
    iput p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->e:F

    .line 38
    .line 39
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->f:J

    .line 40
    .line 41
    iput v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->g:I

    .line 42
    .line 43
    move/from16 p1, p9

    .line 44
    .line 45
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->h:Z

    .line 46
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->i:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const/16 v10, 0x3ff

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->j:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static synthetic c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V
    .locals 15

    .line 1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x2

    .line 16
    const/4 v12, 0x0

    .line 17
    const-string v13, ""

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-object/from16 v14, p1

    .line 21
    .line 22
    move-object/from16 v11, p2

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->b(FFFFFFFIIILandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Brush;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;FFFFFFFLjava/util/List;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 11
    .line 12
    const/16 v11, 0x200

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    move v3, p2

    .line 16
    move v4, p3

    .line 17
    move/from16 v5, p4

    .line 18
    .line 19
    move/from16 v6, p5

    .line 20
    .line 21
    move/from16 v7, p6

    .line 22
    .line 23
    move/from16 v8, p7

    .line 24
    .line 25
    move/from16 v9, p8

    .line 26
    .line 27
    move-object/from16 v10, p9

    .line 28
    .line 29
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->i:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final b(FFFFFFFIIILandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Brush;Ljava/lang/String;Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->k:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->i:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 29
    .line 30
    move/from16 v2, p1

    .line 31
    .line 32
    move/from16 v3, p2

    .line 33
    .line 34
    move/from16 v4, p3

    .line 35
    .line 36
    move/from16 v5, p4

    .line 37
    .line 38
    move/from16 v6, p5

    .line 39
    .line 40
    move/from16 v7, p6

    .line 41
    .line 42
    move/from16 v8, p7

    .line 43
    .line 44
    move/from16 v9, p8

    .line 45
    .line 46
    move/from16 v10, p9

    .line 47
    .line 48
    move/from16 v11, p10

    .line 49
    .line 50
    move-object/from16 v12, p11

    .line 51
    .line 52
    move-object/from16 v13, p12

    .line 53
    .line 54
    move-object/from16 v14, p13

    .line 55
    .line 56
    move-object/from16 v15, p14

    .line 57
    .line 58
    invoke-direct/range {v1 .. v15}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(FFFFFFFIIILandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Brush;Ljava/lang/String;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final d()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 14

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-le v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->e()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 24
    .line 25
    new-instance v3, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->j:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 28
    .line 29
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->a:Ljava/lang/String;

    .line 30
    .line 31
    iget v5, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->b:F

    .line 32
    .line 33
    iget v6, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->c:F

    .line 34
    .line 35
    iget v7, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->d:F

    .line 36
    .line 37
    iget v8, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->e:F

    .line 38
    .line 39
    iget v9, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->f:F

    .line 40
    .line 41
    iget v10, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->g:F

    .line 42
    .line 43
    iget v11, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->h:F

    .line 44
    .line 45
    iget-object v12, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->i:Ljava/util/List;

    .line 46
    .line 47
    iget-object v13, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->j:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct/range {v3 .. v13}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 50
    .line 51
    .line 52
    iget v11, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->g:I

    .line 53
    .line 54
    iget-boolean v12, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->h:Z

    .line 55
    .line 56
    move-object v8, v3

    .line 57
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a:Ljava/lang/String;

    .line 58
    .line 59
    iget v4, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->b:F

    .line 60
    .line 61
    iget v5, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c:F

    .line 62
    .line 63
    iget v6, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d:F

    .line 64
    .line 65
    iget v7, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->e:F

    .line 66
    .line 67
    iget-wide v9, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->f:J

    .line 68
    .line 69
    invoke-direct/range {v2 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZ)V

    .line 70
    .line 71
    .line 72
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->k:Z

    .line 73
    .line 74
    return-object v2
.end method

.method public final e()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->j:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 39
    .line 40
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->a:Ljava/lang/String;

    .line 41
    .line 42
    iget v3, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->b:F

    .line 43
    .line 44
    iget v4, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->c:F

    .line 45
    .line 46
    iget v5, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->d:F

    .line 47
    .line 48
    iget v6, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->e:F

    .line 49
    .line 50
    iget v7, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->f:F

    .line 51
    .line 52
    iget v8, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->g:F

    .line 53
    .line 54
    iget v9, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->h:F

    .line 55
    .line 56
    iget-object v10, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->i:Ljava/util/List;

    .line 57
    .line 58
    iget-object v11, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->j:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
