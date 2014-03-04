

class PeliculasDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Peliculas.count,
      iTotalDisplayRecords: peliculas.total_entries,
      aaData: data
    }
  end

private
  def data
    peliculas.map do |peliculas|
      [
        link_to(peliculas.cnombre, peliculas),
        h(peliculas.cgenero),
        h(product.cyear),
        h(cclasificacion),
        h(cubicacion)
      ]
    end
  end

  def peliculas
    @peliculas ||= fetch_peliculas
  end

  def fetch_peliculas
    peliculas = Peliculas.order("#{sort_column} #{sort_direction}")
    peliculas = peliculas.page(page).per_page(per_page)
    if params[:sSearch].present?
      peliculas = peliculas.where("name like :search or category like :search", search: "%#{params[:sSearch]}%")
    end
    peliculas
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[name category released_on price]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end

